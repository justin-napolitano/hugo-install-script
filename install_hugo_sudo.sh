#!/bin/bash

# Fetch the latest version of Hugo from GitHub API
LATEST_HUGO_VERSION=$(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')

# Download the latest Hugo version using the correct URL
wget https://github.com/gohugoio/hugo/releases/download/${LATEST_HUGO_VERSION}/hugo_extended_${LATEST_HUGO_VERSION#v}_linux-amd64.deb -O hugo.deb

# Verify that the file was downloaded correctly
if [ -f "hugo.deb" ]; then
    # Install Hugo
    sudo apt-get install -y ./hugo.deb

    # Clean up
    rm ./hugo.deb
else
    echo "Error: Failed to download Hugo."
    exit 1
fi
