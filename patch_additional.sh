#!/bin/sh
cd plutosdr-fw/buildroot
cp -r ../../patches/sdr/buildroot/* .
cd ..
echo "All additional sdr buildroot patches are done. Enjoy :)"
