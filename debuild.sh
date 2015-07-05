#!/bin/bash -e

cd "$(dirname "$0")"

exec debuild --no-tgz-check -I "$@"
