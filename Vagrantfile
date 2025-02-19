Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"  # Use Ubuntu 20.04
    config.vm.hostname = "k3s-master"
    config.vm.network "private_network", type: "dhcp"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"  # Allocate 4GB RAM
      vb.cpus = 2          # Allocate 2 CPUs
    end
  
    # Provisioning scripts
    config.vm.provision "shell", path: "scripts/install_k3s.sh"
  end