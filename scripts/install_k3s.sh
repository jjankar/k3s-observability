# install_k3s.sh script
#!/bin/bash
set -e

# Update system
sudo apt-get update -y

# Install dependencies
sudo apt-get install -y curl

# Install K3s
curl -sfL https://get.k3s.io | sh -

# Export K3s kubeconfig
mkdir -p $HOME/.kube
sudo cp /etc/rancher/k3s/k3s.yaml $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo chmod 644 /etc/rancher/k3s/k3s.yaml

# Enable and start K3s service
sudo systemctl enable k3s
sudo systemctl start k3s