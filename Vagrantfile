Vagrant.configure("2") do |config|

  # Definindo o provider, nome do servidor e alocação de recursos
  config.vm.provider "virtualbox" do |vb|
    vb.name = "servidor-lamp"
    vb.cpus = 2
    vb.memory = "2048"
  end

  # Definindo o SO, rede e pasta compartilhada com os roles do Ansible
  config.vm.box = "debian/bullseye64"
  config.vm.network "public_network"
  config.vm.synced_folder "./ansible", "/ansible"

  # Automação com o Ansible
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt install -y ansible
    ansible-playbook --connection=local /ansible/playbook.yml
  SHELL

end
