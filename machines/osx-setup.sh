#!/bin/bash
set -e

if [ ! -f "$(which git)" ] ; then
    echo "Git is not installed - get it from: http://git-scm.com/download/mac"
    exit 1
fi

if [ ! -f "$(which g++)" ] || [ ! -f "$(which clang++)" ] || [ ! -d "/Applications/Xcode.app" ] ; then
    echo "C++ development tools are not installed - install Xcode from the App Store"
    echo "Run \`sudo xcodebuild -license\` after installing!"
    exit 1
fi

if [ ! -f "$(which qmake)" ] ; then
    echo "Qt is not installed - get it from: http://qt-project.org/downloads"
    exit 1
fi

if [ $(qmake -query QT_VERSION | cut -d '.' -f1) != 4 ] ; then
    echo "AXR currently requires Qt version 4.x and is not compatible with Qt 5.x"
    exit 1
fi

if [ ! -d "/Applications/CMake"*".app" ] ; then
    echo "CMake is not installed - get it from: http://www.cmake.org/cmake/resources/software.html"
    exit 1
fi

if [ ! -d "/Applications/Doxygen.app" ] ; then
    echo "Doxygen is not installed - get it from: http://www.stack.nl/~dimitri/doxygen/download.html"
    exit 1
fi

if [ ! -f "$(which pandoc)" ] ; then
    echo "Pandoc is not installed - get it from: https://code.google.com/p/pandoc/downloads/list"
    exit 1
fi

echo "All required packages are installed"
echo "Make sure \`sudo xcodebuild -license\` was run after installing Xcode"
