#!/usr/bin/env bash
set -e
set -x

# prepare the BDD configuration
mkdir bdd-config
cp -r `ls -A | grep -v "bdd-config"` bdd-config
cp bdd/boot-local/jx-requirements.yml bdd-config
cp bdd/boot-local/parameters.yaml bdd-config/env
cd bdd-config
