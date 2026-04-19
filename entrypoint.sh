#!/bin/sh

if [ -n "$2" ] && [ ! -d "$2" ]; then
    mkdir -p "$2"
fi

/opt/naturaldocs/NaturalDocs "$1"