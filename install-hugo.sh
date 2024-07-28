#!/bin/bash

# Fetch the latest version of Hugo from GitHub API
LATEST_HUGO_VERSION=$(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')

echo $LATEST_HUGO_VERSION
# Download the latest Hugo version
curl -LO https://github.com/gohugoio/hugo/releases/download/${LATEST_HUGO_VERSION}/hugo_extended_${LATEST_HUGO_VERSION#v}_Linux-64bit.deb

Install Hugo
apt-get install -y ./hugo_extended_${LATEST_HUGO_VERSION#v}_Linux-64bit.deb

Clean up
rm ./hugo_extended_${LATEST_HUGO_VERSION#v}_Linux-64bit.deb
