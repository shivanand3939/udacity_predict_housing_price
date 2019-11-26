#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=shivanand3939/predict_housing_price

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login
sudo docker tag predict_housing_price $dockerpath:latest

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath
