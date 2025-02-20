#!/bin/bash

# This script installs Longhorn on a Kubernetes cluster using Helm

echo "Adding the Longhorn Helm repository..."
helm repo add longhorn https://charts.longhorn.io
helm repo update

# Install Longhorn via Helm
echo "Installing Longhorn..."
kubectl create namespace longhorn-system
helm install longhorn longhorn/longhorn --namespace longhorn-system
