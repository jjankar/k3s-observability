# Create a 1GB swap file
sudo fallocate -l 1G /swapfile

# Secure the swap file
sudo chmod 600 /swapfile

# Format it as swap space
sudo mkswap /swapfile

# Enable the swap file
sudo swapon /swapfile


