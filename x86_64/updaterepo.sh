#!/bin/bash

rm arcolinux_repo_iso*

echo "repo-add"
repo-add -s -n -R arcolinux_repo_iso.db.tar.gz *.pkg.tar.zst

sleep 1

rm arcolinux_repo_iso.db
rm arcolinux_repo_iso.db.sig

rm arcolinux_repo_iso.files
rm arcolinux_repo_iso.files.sig

mv arcolinux_repo_iso.db.tar.gz arcolinux_repo_iso.db
mv arcolinux_repo_iso.db.tar.gz.sig arcolinux_repo_iso.db.sig

mv arcolinux_repo_iso.files.tar.gz arcolinux_repo_iso.files
mv arcolinux_repo_iso.files.tar.gz.sig arcolinux_repo_iso.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
