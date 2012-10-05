#!/bin/sh
gpg --keyserver pgp.mit.edu --recv-keys 0x345FDD33
gpg --armor --export 0x345FDD33 |apt-key add -

echo deb http://packages.xd.fi/debian/ wheezy main contrib non-free >/etc/apt/sources.list.d/050-packagesxdfi.list
apt-get update

