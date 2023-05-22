#!/bin/sh

set -ex

sudo -v

test ! -d gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu && {
    echo "Extracting gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz..."
    tar xf gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz
}

sudo mkdir -p /opt/nvidia
sudo ln -snf "$PWD/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu" /opt/nvidia/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu
