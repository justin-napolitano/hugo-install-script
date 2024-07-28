# Use the latest Ubuntu image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl git jq wget

# Copy the scripts to the container
COPY install_hugo.sh /install_hugo.sh
COPY install_dart_sass.sh /install_dart_sass.sh

# Run the scripts to install Hugo and Dart Sass
RUN /install_hugo.sh
RUN /install_dart_sass.sh

# Set the working directory
WORKDIR /site

# Copy the local site content to the container
COPY . /site
COPY /src/. /site

# Expose port 1313 for Hugo server
EXPOSE 1313

# Default command to run Hugo server
CMD ["/usr/local/bin/hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://localhost:1313/"]
