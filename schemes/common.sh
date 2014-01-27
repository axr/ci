#!/bin/bash
set -e

if [ -z "$1" ] ; then
    echo "usage: common.sh \$0"
    exit 0
fi

scheme_name=$(basename "$1" .sh)
working_directory="$HOME/org.axrproject.ci.$scheme_name"

rm -rf "$working_directory"
mkdir -p "$working_directory"
cd "$working_directory"
