#!/bin/bash

rm arcolinux_repo_iso*

echo "repo-add"
repo-add -s -n -R arcolinux_repo_iso.db.tar.gz *.pkg.tar.zst
sleep 5
cp arcolinux_repo_iso.db.tar.gz arcolinux_repo_iso.db

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
