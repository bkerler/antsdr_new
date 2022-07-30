#!/bin/sh
cd plutosdr-fw
git apply -p1 < ../patches/antsdr_main.patch
cd buildroot
git apply -p1 < ../../patches/buildroot.patch 
cd ../hdl
git apply -p1 < ../../patches/hdl.patch
cd ../linux
git apply -p1 < ../../patches/linux.patch
git apply -p1 < ../../patches/gcc11.patch
cd ../u-boot-xlnx/
git apply -p1 < ../../patches/u-boot-xlnx.patch
git apply -p1 < ../../patches/fix_arch_u-boot.patch
cd ..
echo "All patches are done. Plutosdr-fw is now Antsdr-fw :)"
