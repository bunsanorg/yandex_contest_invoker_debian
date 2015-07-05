#!/bin/bash -e

cd "$(dirname "$0")"

. ./config.sh

git submodule init
git submodule update
