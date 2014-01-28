#!/bin/bash
set -e

git clone --recursive https://github.com/axr/browser.git
git clone --recursive https://github.com/axr/common.git
git clone --recursive https://github.com/axr/core.git
git clone --recursive https://github.com/axr/framework.git
mkdir _build
cd _build
cmake -DCMAKE_BUILD_TYPE=Release ../browser
make all distribution package_source
