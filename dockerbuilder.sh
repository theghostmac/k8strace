#!/bin/bash

# Get image name from user input
read -p "Enter the name of the Docker image: " image_name

# Build the Docker image with the provided name
docker build -t "$image_name" .

say "Docker image built successfully. Commencing verification process..."

# Verify if image was built successfully
docker images | grep "$image_name"
