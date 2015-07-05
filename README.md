[![Build Status](https://travis-ci.org/bunsanorg/yandex_contest_invoker_debian.svg)](https://travis-ci.org/bunsanorg/yandex_contest_invoker_debian)

# Yandex.Contest.Invoker debian package

## Overview

Ubuntu 14.04 (Trusty) package.

## Build

1. Fetch sources using `fetch.sh` script.
2. Build it using your preferred utility (or use `debuild.sh` script).

## Testing

After package installation user may test it using `tests.sh` script.
This will only work if user put `ENABLE_TESTS=yes` in `user-config.sh` file
and run built package in-place. Testing log will be put into `tests.log` file.

## Cleaning

- `clean.sh` will reset sources to their original state (removing all files not included in selected commit).
- `clean.sh -f` will run clean even if `repack` is set.

## Misc

- `install.sh` script is not supposed to be used directly. It accepts single argument -- destination directory.
- `build.sh` script may be used directly (but it's result can't be used in debian package building).
- If you want to only repack Debian package without rebuilding, set `repack` variable in `user-config.sh`.

## Dependencies

    # Standard repository
    sudo apt-get install maven
    sudo apt-get install python-software-properties
    sudo apt-get install build-essential
    sudo apt-get install devscripts
    sudo apt-get install libboost1.55
    sudo apt-get install gcc-4.9 g++-4.9

    # Custom repositories
    sudo add-apt-repository -y ppa:ubuntu-lxc/stable
    sudo add-apt-repository -y ppa:george-edison55/cmake-3.x
    sudo apt-get update -q
    sudo apt-get install lxc cmake

    # lxc.conf relies on this
    sudo apt-get install ghc mono-complete

## System configuration

Add `swapaccount=1` to kernel parameters.
