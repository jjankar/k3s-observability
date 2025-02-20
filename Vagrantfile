Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"  # Use Ubuntu 20.04
    config.vm.hostname = "k3s-master"
    config.vm.network "private_network", type: "dhcp"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"  # Allocate 4GB RAM
      vb.cpus = 2          # Allocate 2 CPUs
    end

     # Forward required Longhorn ports
     config.vm.network "forwarded_port", guest: 9500, host: 9500  # Longhorn UI
     config.vm.network "forwarded_port", guest: 9501, host: 9501  # Longhorn API
  
    # Provisioning scripts
    config.vm.provision "shell", path: "scripts/install_k3s.sh"
    config.vm.provision "shell", path: "scripts/install_helm.sh"
    config.vm.provision "shell", path: "scripts/install_longhorn.sh"
  end