#!/bin/sh
cd plutosdr-fw
git apply -p1 < ../patches/antsdr_main.patch
cd buildroot
git apply -p1 < ../../patches/libiio.patch
git apply -p1 < ../../patches/dropbear.patch
rm package/libiio/0001-C-public-fields-with-getters-setters-cannot-be-marked-readonly.patch
cp -r ../../patches/antsdr/buildroot/* .
rm -rf package/gnuradio
cp -r ../../patches/gr310/buildroot/* .
cd ../hdl
git apply -p1 < ../../patches/hdl.patch
cd ../linux
git apply -p1 < ../../patches/linux.patch
cd ../u-boot-xlnx/
git apply -p1 < ../../patches/u-boot-xlnx.patch
cd ..
echo "All patches are done. Plutosdr-fw is now Antsdr-fw :)"
