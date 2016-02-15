#!/bin/bash -x

vagrant halt
vagrant destroy -f
vagrant box remove debian/jessie64 --all
rm -Rfv .vagrant

which docker
if [ $? -eq 0 ]
then
  # remove Docker container and images
fi
