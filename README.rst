Yandex.Contest.Invoker debian package
=====================================

Overview
--------

This package is build for Ubuntu 12.04 (Precise).


Build
-----

    1. Fetch sources using *fetch* script.

    #. Build it using your preferred utility (or use *debuild* script).

Testing
-------

After package installation user may test it using *tests* script.
This will only work if user put *ENABLE_TESTS=yes* in *user-config.sh* file
and run built package inplace. Testing log will be put into *tests.log* file.

Cleaning
--------

    - *clean* will reset sources to their original state (removing all files not included in selected commit).

    - *clean -f* will run clean even if *repack* is set.

SVN
---

These sources can be placed into SVN. In such case *svn* script can be useful to maintain
such import.

*svn* script does 2 commits::

    1. *.git* files (with appropriate comment).

    2. all other files (invokes user's editor).

Misc
----

    - *install* script is not supposed to be used directly.

    - *build* script may be used directly (but it's result can't be used in debian package building).

    - If you want to only repack debian package without rebuilding, set *repack* variable in *user-config.sh*.

Dependencies
------------

    sudo apt-get install maven
    sudo apt-get install python-software-properties
    sudo apt-get install build-essential
    sudo apt-get install devscripts
    sudo apt-get install libseccomp0

    sudo add-apt-repository ppa:ubuntu-toolchain-r/test
    sudo apt-get update
    sudo apt-get install gcc-4.9 g++-4.9

    sudo add-apt-repository ppa:boost-latest/ppa
    sudo apt-get update
    sudo apt-get install libboost1.55

    sudo add-apt-repository ppa:ubuntu-lxc/stable
    sudo apt-get update
    sudo apt-get install lxc

    sudo apt-get install ghc

System configuration
--------------------
Add swapaccount=1 to kernel parameters.
