ansible-playbook -i ./inventory/hosts.ini ./playbooks/install-longhorn.yml

ansible-playbook -i /root/project/k3s-observability/apps/inventory/hosts.ini /root/project/k3s-observability/apps/playbooks/install-longhorn.yml

ansible-inventory -i /root/project/k3s-observability/apps/inventory/hosts.ini --list

vagrant ssh-config > ssh_config
ssh -F ssh_config default
ssh-keygen -f "/root/.ssh/known_hosts" -R "[127.0.0.1]:2222"


ansible-playbook -i /root/project/k3s-observability/apps/inventory/hosts.ini /root/project/k3s-observability/apps/playbooks/install-longhorn.yml --ssh-common-args='-F ssh_config'
