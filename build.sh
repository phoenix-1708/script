#!/bin/bash
sudo source build/envsetup.sh
sudo lunch lineage_sweet-userdebug
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
sudo ccache -M 12G
sudo ccache -o compression=true
sudo ccache -z
export BUILD_USERNAME=phoenix1708
export BUILD_HOSTNAME=prototype
export TZ=Asia/Jakarta
sudo mka bacon -j$(nproc --all)
