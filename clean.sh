#!/bin/bash -e

cd "$(dirname "$0")"

. ./config.sh

while getopts "frh" arg
do
    case "$arg" in
        f) force=1 ;;
        h) ;;&
        ?) printf "Usage: %s: [-f ignore repack]\n" "$0" 1>&2 && exit 1;;
    esac
done
shift $((OPTIND - 1))

if [[ $repack && -z $force ]]
then
    exit 0
fi

git submodule foreach 'git reset --hard && git clean -dfx && echo'
rm -rf build
