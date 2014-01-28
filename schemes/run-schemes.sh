#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

for scheme_name in "$@"
do
    working_directory="$HOME/org.axrproject.ci.$scheme_name"

    rm -rf "$working_directory"
    mkdir -p "$working_directory"
    cd "$working_directory"

    "$SCRIPTPATH/$scheme_name.sh"
done
