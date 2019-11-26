#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=shivanand3939/predict_housing_price

# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run predict-housing-price --image=docker.io/shivanand3939/predict_housing_price  --port=80

# Step 3:
# List kubernetes pods
sudo kubectl get pods

# Step 4:
# Forward the container port to a host
sudo kubectl expose deployment predict-housing-price --type=LoadBalancer --port=8000 --target-port=80
