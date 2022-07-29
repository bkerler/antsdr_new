#!/bin/sh
cd plutosdr-fw/buildroot
git apply -p1 < ../../patches-additional/sdr_buildroot.patch
cd ..
echo "All additional sdr buildroot patches are done. Enjoy :)"
