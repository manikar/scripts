#!/bin/bash

cd ~/android/lineage-16.0
make clean
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/manikar/local_manifests/lineage-16.0/nobleltebmc.xml
repo sync -c --force-sync --no-clone-bundle --no-tags
. build/envsetup.sh
brunch nobleltebmc
