Vagrant.configure("2") do |config|

  # Definir o provider
  config.vm.provider "virtualbox" do |v|
    v.name = "servidor_lamp"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Definir hostname, SO e rede
  config.vm.hostname = "webserver"
  config.vm.box = "debian/bullseye64"
  config.vm.network "private_network", ip: "192.168.56.11"

  # Compartilhar a pasta que contém as roles do ansible
  config.vm.synced_folder "./ansible", "/ansible"

  # Instalar o ansible
  config.vm.provision "shell", path: "provision.sh"

  # Provisionar a VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/ansible"
    ansible.playbook = "playbook.yml"
  end

end
