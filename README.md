# Servidor LAMP Ágil

Neste projeto, há a criação de um servidor web virtualizado baseado no stack de tecnologias **LAMP** (Linux, Apache, MySQL, PHP) usando as ferramentas **Vagrant** e **Ansible**.

O servidor irá servir uma página PHP simples.

Para criar o servidor, execute em um host (máquina física):

`vagrant up`

O comando acima irá criar o servidor seguindo as instruções do arquivo Vagrantfile. E nesse mesmo arquivo, haverá o acionamento do Ansible, instalando o Apache, MySQL e PHP.
