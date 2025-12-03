#!/bin/bash

function k-pop() {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo
}

k-pop

function wordpress() {
	sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
	wget https://wordpress.org/latest.tar.gz
	tar zxf latest.tar.gz
	sudo mv wordpress/* /var/www/html
	sudo chown -R apache:apache /var/www/html
	sudo chmod -R 755 /var/www/html
	sudo rm /var/www/html/index.html
	sudo systemctl restart httpd
}

wordpress

function binary() {
	sudo yum install tree -y
	wget https://releases.hashicorp.com/terraform/1.14.0/terraform_1.14.0_linux_amd64.zip
	unzip terraform_1.14.0_linux_amd64.zip
	sudo mv terraform /usr/local/bin
}

binary
