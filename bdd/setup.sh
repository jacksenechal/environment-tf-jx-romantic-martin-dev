#!/usr/bin/env bash
set -e
set -x

if [ $# -eq 0 ]; then
    echo "Please provide the source configuration path"
    exit -1
fi
SRC_PATH=$1

DST_PATH="bdd-config"
if [ $# -eq 2 ]; then
    DST_PATH=$2
fi

# prepare the BDD configuration
mkdir -p $DST_PATH
cp -r `ls -A | grep -v "${DST_PATH}"` $DST_PATH
cp $SRC_PATH/jx-requirements.yml $DST_PATH
cp $SRC_PATH/parameters.yaml $DST_PATH/env
