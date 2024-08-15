#!/bin/bash

# Define variables
DOCKERFILE="docker_frontend"
IMAGE_NAME="frontend-app"
SERVICE_CONFIG="frontend-service.yaml"
DEPLOYMENT_CONFIG="frontend-deployment.yaml"
DEPLOYMENT_NAME="frontend-deployment"
DEPLOYMENT_LABEL="frontend"

# Build the Docker image
echo "Building Docker image..."
docker build -f $DOCKERFILE -t $IMAGE_NAME .

# Apply the Kubernetes service configuration
echo "Applying Kubernetes service configuration..."
kubectl apply -f $SERVICE_CONFIG

# Apply the Kubernetes deployment configuration
echo "Applying Kubernetes deployment configuration..."
kubectl apply -f $DEPLOYMENT_CONFIG

# Restart the Kubernetes deployment to apply the changes
echo "Restarting Kubernetes deployment..."
kubectl rollout restart deployment/$DEPLOYMENT_NAME

echo "Script execution completed."

echo "Waiting 5 seconds before logging"
sleep 5

echo "Fetching logs from all pods in the deployment..."
kubectl logs -l app=$DEPLOYMENT_LABEL --tail=10 -f