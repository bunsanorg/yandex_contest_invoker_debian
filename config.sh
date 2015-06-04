lxc_pc=/usr/share/pkgconfig/lxc.pc
invoker_compat_jni_version="1.0.0-BUILD-SNAPSHOT"

MFLAGS=()
CMAKE_FLAGS=("-DCMAKE_CXX_COMPILER=/usr/bin/g++-5" "-DCMAKE_C_COMPILER=/usr/bin/gcc-5")

if [[ -f user-config.sh ]]
then
    . ./user-config.sh
fi
