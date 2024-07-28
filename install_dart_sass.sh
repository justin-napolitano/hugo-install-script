#!/bin/bash

# Fetch the latest version of Dart Sass from GitHub API
LATEST_SASS_VERSION=$(curl -s https://api.github.com/repos/sass/dart-sass/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')

# Download the latest Dart Sass version
curl -L -o dart-sass.tar.gz https://github.com/sass/dart-sass/releases/download/${LATEST_SASS_VERSION}/dart-sass-${LATEST_SASS_VERSION}-linux-x64.tar.gz

# Extract and install Dart Sass
tar -xzf dart-sass.tar.gz -C /usr/local/bin --strip-components=1 dart-sass/sass

# Clean up
rm dart-sass.tar.gz
