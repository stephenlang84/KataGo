#!/bin/bash

# Update submodules
git submodule update --init --recursive

# Create a build directory
mkdir -p build
cd build

# Run CMake to configure the build
cmake ../cpp -DUSE_BACKEND=EIGEN -DEMBEDDED_MODE_BUILD=1

# Build the project
make -j$(nproc)