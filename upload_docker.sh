#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=orikix

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u orikix

# Step 3:
# Push image to a docker repository
docker push orikix/sklearnapp:1.0