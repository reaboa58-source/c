#!/bin/bash

# Deploy script for Render.com

echo "=== Building Docker image ==="
docker build -t bot-dashboard .

echo "=== Running container ==="
docker run -p 3000:3000 --env-file .env bot-dashboard
