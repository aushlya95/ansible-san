#!/bin/bash

# Remove existing files
rm -rf /tmp/*

# Clone the application repository
cd /tmp/
git clone https://github.com/aushlya95/alpha.lambdax.san.git
cd alpha.lambdax.san
git fetch --tags

# Copy files from the new version
git checkout tags/$TAG_PARAM -b $TAG_PARAM
cp -r * /tmp/
sudo -i
docker images
docker ps -a
echo "Deploying on server '$SERVER'..."
