#!/bin/bash

cd ~/android/aosp
make clean
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/manikar/local_manifests/aosp/nobleltebmc.xml
repo sync -c --force-sync --no-clone-bundle --no-tags
. build/envsetup.sh
brunch nobleltebmc
