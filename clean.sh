#!/bin/bash -x

vagrant halt
vagrant destroy -f
vagrant box remove debian/jessie64 --all

rm -Rfv .vagrant
