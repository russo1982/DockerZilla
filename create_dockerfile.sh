#!/bin/bash

echo "Welcome to the Dockerfile Generator!"

# Get the base image
read -p "Enter the base image (e.g., ubuntu, alpine, python:3.9): " BASE_IMAGE

# Get the packages to install
read -p "Enter the packages to install (space-separated, or leave blank): " PACKAGES

# Get the working directory
read -p "Enter the working directory inside the container (or leave blank for default): " WORKDIR

# Get the command to run
read -p "Enter the command to run (e.g., python app.py, or leave blank): " CMD

# Create Dockerfile
echo "Generating Dockerfile..."
{
  echo "FROM $BASE_IMAGE"
  
  # Install packages if provided
  if [ ! -z "$PACKAGES" ]; then
    echo "RUN apt-get update && apt-get install -y $PACKAGES && rm -rf /var/lib/apt/lists/*"
  fi
  
  # Set working directory if provided
  if [ ! -z "$WORKDIR" ]; then
    echo "WORKDIR $WORKDIR"
  fi
  
  # Set default command if provided
  if [ ! -z "$CMD" ]; then
    echo "CMD [\"${CMD// /\", \"}\"]"
  fi
} > Dockerfile

echo "Dockerfile created successfully!"
cat Dockerfile


