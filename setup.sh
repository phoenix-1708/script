#!/bin/bash
sudo git clone https://github.com/akhilnarang/scripts bscripts && cd bscripts && bash setup/android_build_env.sh && cd ..
sudo bash kernel_setup.sh
sudo git config --global user.name "phoenix-1708"
sudo git config --global user.email "harikumar1708@gmail.com"
sudo git config --global color.ui true
