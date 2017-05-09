#!/usr/bin/env bash

find . -name CMakeFiles -type d \
       | tee /dev/tty \
       | xargs -I{} rm -r {}

find . -name cmake_install.cmake -or \
       -name install_manifest.txt -or \
       -name Makefile \
       | tee /dev/tty \
       | xargs -I{} rm {}

#find . -name cmake_install.cmake -or \
#       -name install_manifest.txt -or \
#       -name Makefile