# Install Laravel 8, PHP 8 on Ubuntu 20 (Focal)

## Install PHP 8

```
# log in as root
sudo -i

apt install lsb-release ca-certificates apt-transport-https software-properties-common
add-apt-repository ppa:ondrej/php
apt install php8.0
```

## Install needed extensions for Laravel 8

```
apt install php8.0-xml php8.0-tokenizer php8.0-pdo php8.0-mbstring php8.0-fileinfo php8.0-ctype php8.0-bcmath php8.0-zip
```

## Install Composer

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/bin/composer
```

Latest commands are here: https://getcomposer.org/download/

## Install Laravel Installer

```
su - ubuntu
composer global require laravel/installer
```

## Create a test project

```
/home/ubuntu/.config/composer/vendor/bin/laravel new demo1
```
