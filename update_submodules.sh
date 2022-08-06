#!/bin/sh
git submodule init
git submodule update
cd plutosdr-fw
git submodule init
git submodule update
cd buildroot
git checkout ff056d89d342b886f77855271b117799838529f3
cd ../..

