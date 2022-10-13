#!/bin/bash
cd /mnt/tmp/rom
sudo source build/envsetup.sh
sudo lunch spark_sweet-user
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
sudo ccache -M 12G
sudo ccache -o compression=true
sudo ccache -z
export TZ=Asia/Dhaka
sudo mka bacon -j$(nproc --all)
