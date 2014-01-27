#!/bin/bash
set -e

git clone --recursive https://github.com/axr/common.git
git clone --recursive https://github.com/axr/core.git
mkdir _build
cd _build
cmake -DCMAKE_BUILD_TYPE=Release -DAXR_BUILD_CORE=ON -DAXR_BUILD_DOCS=ON -DBUILD_SHARED_LIBS=ON ../core
make all distribution package_source
