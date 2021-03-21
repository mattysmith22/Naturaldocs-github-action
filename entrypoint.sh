#!/bin/sh -l

if [ ! -d "$2" ]; then
    mkdir "$2"
fi
mono "/opt/Natural Docs/NaturalDocs.exe" "$1"