---
slug: github-hugo-install-script-note-technical-overview
id: github-hugo-install-script-note-technical-overview
title: hugo-install-script
repo: justin-napolitano/hugo-install-script
githubUrl: https://github.com/justin-napolitano/hugo-install-script
generatedAt: '2025-11-24T18:38:18.317Z'
source: github-auto
summary: >-
  This repo offers shell scripts and Docker setups to automate Hugo installation
  on Linux. It’s designed for quick, hassle-free setups.
tags: []
seoPrimaryKeyword: ''
seoSecondaryKeywords: []
seoOptimized: false
topicFamily: null
topicFamilyConfidence: null
kind: note
entryLayout: note
showInProjects: false
showInNotes: true
showInWriting: false
showInLogs: false
---

This repo offers shell scripts and Docker setups to automate Hugo installation on Linux. It’s designed for quick, hassle-free setups.

## Key Features

- Installs the latest Hugo extended version.
- Dart Sass installation scripts included.
- Dockerfiles for both development and production environments.
- Supports standard and sudo installations.

## Quick Start

1. Clone the repo:

   ```bash
   git clone https://github.com/justin-napolitano/hugo-install-script.git
   cd hugo-install-script
   ```

2. Run the installation script:

   ```bash
   ./install-hugo.sh
   ```

   For installations needing sudo:

   ```bash
   ./install_hugo_sudo.sh
   ```

3. To install Dart Sass:

   ```bash
   ./install_dart_sass.sh
   ```

### Docker Usage

Build the development image:

```bash
docker build -f Dockerfile -t hugo-dev .
```

For production:

```bash
docker build -f DockerFileProd -t hugo-prod .
```

## Gotchas

Make sure you have `curl` and `dpkg` installed on your Linux system before proceeding.
