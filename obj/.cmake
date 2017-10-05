#!/usr/bin/env sh

export MAKEFLAGS=-j8

cmake                                                       \
    -DNANA_CMAKE_VERBOSE_PREPROCESSOR=OFF                   \
    -DNANA_CMAKE_ENABLE_MINGW_STD_THREADS_WITH_MEGANZ=ON    \
    -DNANA_CMAKE_STD_FILESYSTEM_FORCE=OFF                   \
    -DNANA_CMAKE_NANA_FILESYSTEM_FORCE=ON                   \
    -DNANA_CMAKE_ENABLE_AUDIO=ON                            \
    -DNANA_CMAKE_SHARED_LIB=ON                              \
    \
    -DNANA_CMAKE_ENABLE_PNG=OFF                             \
    \
    -DNANA_CMAKE_ENABLE_JPEG=ON                             \
    \
    -DNANA_CMAKE_AUTOMATIC_GUI_TESTING=ON                   \
    -DCMAKE_INSTALL_PREFIX=../nana_lib                      \
    \
    $@ \
    -G "MSYS Makefiles"                                     \
    ..

#        -DPNG_LIBRARY=/d/lib/zlib/libz.dll.a           \
#        -DJPEG_LIBRARY=/d/lib/env/lib/libjpeg.dll.a         \
#        -DPNG_PNG_INCLUDE_DIR=/d/lib/png/bin/lib            \
#        -DJPEG_INCLUDE_DIR=/d/lib/env/include               \
