#!/bin/bash
set -e

for scheme_name in "$@"
do
    scheme_name=$(basename "$1" .sh)
    working_directory="$HOME/org.axrproject.ci.$scheme_name"

    rm -rf "$working_directory"
    mkdir -p "$working_directory"
    cd "$working_directory"

    dir=$(dirname "$0")
    "$dir/$scheme.sh"
done
