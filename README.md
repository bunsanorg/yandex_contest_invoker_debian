Yandex.Contest.Invoker debian package
=====================================

Overview
--------

This package is build for Ubuntu 10.04 (Lucid).


Build
-----

    1. Fetch sources using *fetch* script.

    #. Build it using your prefered utility (or use *debuild* script).

Testing
-------

After package installation user may test it using *tests* script.
This will only work if user put *ENABLE_TESTS=yes* in *user-config.sh* file
and run built package inplace. Testing log will be put into *tests.log* file.

Cleaning
--------

    - *clean* will reset sources to their original state (removing all files not included in selected commit).

    - *clean -f* will remove all sources.

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

