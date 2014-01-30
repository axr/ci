git clone --recursive --branch=master https://github.com/axr/common.git || exit /b
git clone --recursive --branch=master https://github.com/axr/core.git || exit /b
mkdir _build
cd _build
cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DAXR_BUILD_CORE=ON -DAXR_BUILD_DOCS=ON ../core || exit /b
nmake all distribution package_source
