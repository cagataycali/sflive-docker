#!/bin/bash -ex

for name in $(find . -maxdepth 1 ! -path . -type d | sort); do
    docker build --no-cache -t sflive/$(basename $name) --rm $name
done;
