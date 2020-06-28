#!/bin/sh

# this code derives from https://github.com/pprzetacznik/IElixir

if [ ! $# -eq 1 ]
then
  echo "Usage: ./start_script.sh [connection_file]"
  exit 1
fi

IELIXIR_PATH=$(cd `dirname "$0"` && pwd)/
WORKING_DIRECTORY=$(pwd)
cd $IELIXIR_PATH
MIX_ENV=prod NO_LISTEN=true USE_IELIXIR=true ELIXIR_ERL_OPTIONS="-smp enable" CONNECTION_FILE=$1 WORKING_DIRECTORY=$WORKING_DIRECTORY mix run --no-halt --no-compile
