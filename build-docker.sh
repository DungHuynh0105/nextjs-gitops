#!/bin/bash

# Check if the version argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a version. Example: ./build-docker.sh 0.0.1"
  exit 1
fi

# Assign the version argument to a variable
VERSION=$1

# Run the docker build command with the provided version
docker build -t dunghuynh0105/nextjs-gitops:$VERSION .

# Notify completion
echo "Successfully built Docker image with tag: dunghuynh0105/nextjs-gitops:$VERSION"