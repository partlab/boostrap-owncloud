#!/bin/sh

set -e

if [ "$#" -ne 1 ]; then
    echo 'Usage: sh boostrap-owncloud.sh <directory>'
    exit 1
fi

curl https://download.owncloud.org/community/owncloud-7.0.2.tar.bz2 | tar -xvzf -
mv owncloud $1 ; cp config/* $1 ; cd $1 ; fig up
