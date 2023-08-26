#!/bin/bash

# dpkg-scanpackages -m ./debs > ./Packages
# zstd -q -c19 ./Packages > ./Packages.zst
# xz -c9 ./Packages > ./Packages.xz
# # bzip2 -fks ./Packages
# bzip2 -c9 ./Packages > ./Packages.bz2
# gzip -nc9 ./Packages > ./Packages.gz
# lzma -c9 ./Packages > ./Packages.lzma

dpkg-scanpackages -m ./debs > Packages
bzip2 -c Packages > Packages.bz2
gzip -c Packages > Packages.gz

# dpkg-scanpackages -m . /dev/null > Packages
# bzip2 -fks Packages