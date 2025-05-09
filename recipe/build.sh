#!/bin/bash

# Fetch visionworkbench
cd $SRC_DIR
wget https://github.com/visionworkbench/visionworkbench/archive/refs/tags/3.5.3.tar.gz > /dev/null 2>&1 # this is verbose
tar xzf 3.5.3.tar.gz

# Build visionworkbench
cd $SRC_DIR
cd visionworkbench-3.5.3
mkdir build
cd build
cmake ..                                         \
    -DCMAKE_PREFIX_PATH=${PREFIX}                \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}             \
    -DASP_DEPS_DIR=${PREFIX}                     \
    -DCMAKE_VERBOSE_MAKEFILE=ON
make -j${CPU_COUNT}
make install

# Build stereo-pipeline
cd $SRC_DIR
mkdir build
cd build
cmake ..                                         \
    -DCMAKE_PREFIX_PATH=${PREFIX}                \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}             \
    -DASP_DEPS_DIR=${PREFIX}                     \
    -DCMAKE_VERBOSE_MAKEFILE=ON
make -j${CPU_COUNT}
make install
