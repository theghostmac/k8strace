#!/bin/bash

# Get commit message from user input
read -p "Enter commit message: " message

# Add all changes to staging area
git add .

# Commit changes with the provided message
git commit -m "$message"

# Push changes to GitHub
git push
