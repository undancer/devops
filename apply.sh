#!/usr/bin/env bash

git pull
git submodule update --init
puppet apply --modulepath=modules manifests/site.pp