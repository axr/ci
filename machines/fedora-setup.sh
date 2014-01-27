#!/bin/bash
set -e

if [ "$(id -u)" != "0" ] ; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

yum groupinstall 'Development Tools'
yum install git rpm rpm-build qt qt-devel cmake SDL-devel gtk2-devel doxygen pandoc
