#!/bin/sh
cd plutosdr-fw
git apply -p1 < ../patches/antsdr_main.patch
cd buildroot
git checkout -b master-next
cp -r ../../patches/antsdr/buildroot/* .
cp -r ../../patches/gr310/buildroot/* .
cd ../hdl
git apply -p1 < ../../patches/hdl.patch
cd ../linux
git apply -p1 < ../../patches/linux.patch
cd ../u-boot-xlnx/
git apply -p1 < ../../patches/u-boot-xlnx.patch
cd ..
echo "All patches are done. Plutosdr-fw is now Antsdr-fw :)"
