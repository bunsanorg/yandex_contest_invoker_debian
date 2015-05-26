cmake_minimum_required(VERSION 3.0)

include(${CMAKE_SOURCE_DIR}/system-config.cmake OPTIONAL)

project(yandex_contest_invoker_debian)

add_subdirectory(modules/bunsan_cmake)
add_subdirectory(modules/bunsan_testing)
add_subdirectory(modules/bunsan_common)
add_subdirectory(modules/yandex_contest_common)
add_subdirectory(modules/yandex_contest_system)
add_subdirectory(modules/yandex_contest_invoker)
add_subdirectory(modules/yandex_contest_invoker_compat_common)
add_subdirectory(modules/yandex_contest_invoker_compat_jni)
add_subdirectory(modules/yandex_contest_invoker_flowctl_pipectl)

if(ENABLE_TESTS)
    enable_testing()
endif()
