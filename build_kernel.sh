#!/bin/bash -x
(
  mkdir -p ~/kernel
  cd ~/kernel

  rm -Rfv linux-source*

  tar -xavf /usr/src/linux-source-3.16.tar.xz
  cd linux-source-3.16

  make x86_64_defconfig
  time make -j$(nproc) deb-pkg
) | tee build_kernel.log
