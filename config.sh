lxc_pc=/usr/share/pkgconfig/lxc.pc
invoker_compat_jni_version="1.0.0-BUILD-SNAPSHOT"

MFLAGS=()
#CMAKE_FLAGS=("-DCMAKE_CXX_COMPILER=/usr/bin/g++-4.9" "-DCMAKE_C_COMPILER=/usr/bin/gcc-4.9")

if [[ -f user-config.sh ]]
then
    . ./user-config.sh
fi
