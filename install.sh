#!/bin/bash -e

root="$(readlink -f "$1")"

cd "$(dirname "$0")"

. ./config.sh

make -C build install DESTDIR="$root"
install -d "$root/var/lib/yandex/contest/invoker/lxc"
install -m 0644 -D "lxc.conf" "$root/etc/yandex/contest/invoker/lxc.conf"
install -m 0644 -D "yandex-contest-invoker.sh" "$root/etc/profile.d/yandex-contest-invoker.sh"
install -m 0644 -D "modules/yandex_contest_invoker_compat_jni/java/target/yandex.contest.invoker-${invoker_compat_jni_version}.jar" \
    "$root/usr/share/java/yandex.contest.invoker-${invoker_compat_jni_version}.jar"
install -m 0644 -D "modules/yandex_contest_invoker_compat_jni/java/target/yandex.contest.invoker-${invoker_compat_jni_version}-javadoc.jar" \
    "$root/usr/share/java/yandex.contest.invoker-${invoker_compat_jni_version}-javadoc.jar"
