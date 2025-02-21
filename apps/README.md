ansible-playbook -i ./inventory/hosts.ini ./playbooks/install-longhorn.yml

ansible-playbook -i /root/project/k3s-observability/apps/inventory/hosts.ini /root/project/k3s-observability/apps/playbooks/install-longhorn.yml

ansible-inventory -i /root/project/k3s-observability/apps/inventory/hosts.ini --list

vagrant ssh-config > ssh_config
ssh -F ssh_config default

ansible-playbook -i /root/project/k3s-observability/apps/inventory/hosts.ini /root/project/k3s-observability/apps/playbooks/install-longhorn.yml --ssh-common-args='-F ssh_config'
