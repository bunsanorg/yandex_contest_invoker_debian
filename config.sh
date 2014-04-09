extlib_prefix=bunsan_
lib_prefix=yandex_contest_
extlibs=(cmake testing common)
libs=(common system invoker invoker_compat_common invoker_flowctl_game invoker_compat_jni invoker_flowctl_pipectl)
repo=git://github.com/sarum9in
lxc_pc=/usr/share/pkgconfig/lxc.pc

alllibs=()
for i in "${extlibs[@]}"
do
    alllibs+=("$extlib_prefix$i")
done
for i in "${libs[@]}"
do
    alllibs+=("$lib_prefix$i")
done

invoker_compat_jni_version="1.0.0-BUILD-SNAPSHOT"

MFLAGS=()
CMAKE_FLAGS=("-DCMAKE_CXX_COMPILER=/usr/bin/g++-4.8" "-DCMAKE_C_COMPILER=/usr/bin/gcc-4.8")

if [[ -f user-config.sh ]]
then
    . ./user-config.sh
fi
