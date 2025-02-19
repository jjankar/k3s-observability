#!/bin/bash

# This script installs Helm (the Kubernetes package manager) on a Linux system

echo "Downloading the latest Helm release..."
curl -fsSL https://get.helm.sh/helm-v3.10.1-linux-amd64.tar.gz -o helm-v3.10.1-linux-amd64.tar.gz

echo "Extracting Helm tarball..."
tar -zxvf helm-v3.10.1-linux-amd64.tar.gz

echo "Installing Helm..."
sudo mv linux-amd64/helm /usr/local/bin/helm

echo "Cleaning up..."
rm -rf helm-v3.10.1-linux-amd64.tar.gz linux-amd64

echo "Verifying Helm installation..."
helm version
helm list

echo "Helm installation complete!"
