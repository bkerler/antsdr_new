#!/bin/sh
git submodule init
git submodule update
cd plutosdr-fw
git submodule init
git submodule update
cd ..

