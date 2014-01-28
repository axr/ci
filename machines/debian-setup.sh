#!/bin/bash
set -e

if [ "$(id -u)" != "0" ] ; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

apt-get update
apt-get install build-essential lintian qt-sdk cmake libsdl1.2-dev libgtk2.0-dev doxygen pandoc
