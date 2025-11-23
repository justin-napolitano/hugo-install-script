# hugo-install-script

A collection of shell scripts and Docker configurations designed to automate the installation of Hugo, the static site generator, and related tools like Dart Sass. This repository simplifies setting up Hugo on Linux environments with minimal manual steps.

## Features

- Automatically fetches and installs the latest Hugo extended version for Linux.
- Provides scripts for installing Dart Sass.
- Includes Dockerfiles for containerized setups.
- Supports both standard and sudo-based installation methods.

## Tech Stack

- Shell scripting (Bash)
- Docker

## Getting Started

### Prerequisites

- Linux-based system
- curl
- dpkg (Debian package manager)

### Installation

Clone the repository:

```bash
git clone https://github.com/justin-napolitano/hugo-install-script.git
cd hugo-install-script
```

Run the Hugo installation script:

```bash
./install-hugo.sh
```

If you require sudo privileges for installation, use:

```bash
./install_hugo_sudo.sh
```

To install Dart Sass:

```bash
./install_dart_sass.sh
```

### Using Docker

Build the Docker image for development:

```bash
docker build -f Dockerfile -t hugo-dev .
```

For production:

```bash
docker build -f DockerFileProd -t hugo-prod .
```

## Project Structure

- `install-hugo.sh`: Script to fetch and install the latest Hugo extended Debian package.
- `install_hugo_sudo.sh`: Variant of the Hugo install script that uses sudo for installation.
- `install_dart_sass.sh`: Script to install Dart Sass.
- `Dockerfile`: Docker configuration for development or general use.
- `DockerFileProd`: Docker configuration optimized for production environments.

## Future Work / Roadmap

- Add support for other operating systems beyond Linux.
- Enhance error handling and logging in scripts.
- Automate version pinning or allow specifying Hugo versions.
- Extend Dockerfiles with multi-stage builds for smaller images.
- Incorporate automated testing for installation scripts.
