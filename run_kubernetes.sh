#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ejstylz/uda-micro

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run uda-micro --image=$dockerpath:latest --port=80 --pod-running-timeout=5m0s

# Step 3:
# List kubernetes podss
kubectl get pods -A

# Step 4:
# Forward the container port to a host
kubectl port-forward uda-micro 8000:80

