#!/bin/sh
cd plutosdr-fw/buildroot
git apply -p1 < ../../patches/buildroot.patch 
cd ../hdl
git apply -p1 < ../../patches/hdl.patch
cd ../linux
git apply -p1 < ../../patches/linux.patch
cd ../u-boot-xlnx/
git apply -p1 < ../../patches/u-boot-xlnx.patch
cd ..
echo "All patches are done. Plutosdr-fw is now Antsdr-fw :)"