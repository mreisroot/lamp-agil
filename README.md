# Servidor LAMP Ágil

Neste projeto, há a criação de um servidor web virtualizado baseado no stack de tecnologias **LAMP** (Linux, Apache, MySQL, PHP) usando as ferramentas **Vagrant** e **Ansible**.

O sistema Linux utilizado neste projeto é o Debian.

O servidor irá servir uma calculadora simples escrita em PHP.

Para criar o servidor, execute em um host (máquina física):

`vagrant up`

O comando acima irá criar o servidor seguindo as instruções do arquivo Vagrantfile. E nesse mesmo arquivo, haverá o acionamento do Ansible, instalando o Apache, MySQL e PHP.

Para acessar a aplicação, digite na barra de navegação do navegador:

`<ip_do_servidor>/site.php`
