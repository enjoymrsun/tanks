#!/bin/bash

export PORT=6000

cd ~/www/tanks
./bin/tanks stop || true
./bin/tanks start
