#!/bin/bash -e

. /etc/profile

cd "$(dirname "$0")"

. ./config.sh

tests_log="$PWD/tests.log"

if [[ $EUID != 0 ]]
then
    echo "Tests should be run as root." >&2
    exit 1
fi

rm -f "$tests_log"

trap on_exit EXIT INT TERM

on_exit()
{
    if [[ -f $tmpfile ]]
    then
        rm -f "$tmpfile"
    fi
}

tmpfile="$(mktemp)"

run_tests()
{
    "$@" &>>"$tests_log" || true
}

run_tests_io_wrap()
{
    "$@" &>"$tmpfile" || cat "$tmpfile" >>"$tests_log"
}

run_tests make -C build test ARGS=--output-on-failure
(cd modules/yandex_contest_invoker_compat_jni/java && run_tests_io_wrap mvn test)

chown --reference=tests -R .
