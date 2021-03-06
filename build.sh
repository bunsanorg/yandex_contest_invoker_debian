#!/bin/bash -e

. /etc/profile

cd "$(dirname "$0")"

. ./config.sh

if [[ $repack ]]
then
    exit 0
fi

pushd modules/yandex_contest_invoker_compat_jni &>/dev/null
pushd java &>/dev/null
mvn package -DskipTests
popd &>/dev/null
./jni_gen.sh
./jni_validate.sh
popd &>/dev/null

mkdir -p build
pushd build &>/dev/null
cmake "${CMAKE_FLAGS[@]}" ..
make "${MFLAGS[@]}"
popd &>/dev/null
