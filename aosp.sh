#!/bin/bash

mkdir -p ~/android/aosp
cd ~/android/aosp
repo init -u https://android.googlesource.com/platform/manifest -b android-10.0.0_r39
repo sync -c --force-sync --no-clone-bundle --no-tags
mkdir -p .repo/local_manifests
cd
