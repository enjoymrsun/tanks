#!/bin/bash

export PORT=6000
export MIX_ENV=prod
export GIT_PATH=/home/xs/src/tanks

PWD=`pwd`
if [ $PWD != $GIT_PATH ]; then
	echo "Error: Must check out git repo to $GIT_PATH"
	echo "  Current directory is $PWD"
	exit 1
fi

if [ $USER != "xs" ]; then
	echo "Error: must run as user 'xs'"
	echo "  Current user is $USER"
	exit 2
fi

mix deps.get
(cd assets && npm install)
(cd assets && ./node_modules/brunch/bin/brunch b -p)
mix phx.digest
MIX_ENV=prod mix ecto.create
MIX_ENV=prod mix ecto.migrate

MIX_ENV=prod mix release --env=prod

mkdir -p ~/www
mkdir -p ~/old

NOW=`date +%s`
if [ -d ~/www/tanks ]; then
	echo mv ~/www/tanks ~/old/$NOW
	mv ~/www/tanks ~/old/$NOW
fi

mkdir -p ~/www/tanks
REL_TAR=~/src/tanks/_build/prod/rel/tanks/releases/0.0.1/tanks.tar.gz
cp $REL_TAR ~/www/tanks
(cd ~/www/tanks && tar -xzvf $REL_TAR)

crontab - <<CRONTAB
@reboot bash /home/xs/src/tanks/start.sh
CRONTAB

. start.sh
