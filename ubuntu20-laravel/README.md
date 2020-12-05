# Install Laravel 8, PHP 8 on Ubuntu 20 (Focal)

## Install PHP 8

```
sudo -i

apt install lsb-release ca-certificates apt-transport-https software-properties-common
add-apt-repository ppa:ondrej/php
apt install php8.0
```

## Install needed extensions for Laravel 8

```
apt install php8.0-xml php8.0-tokenizer php8.0-pdo php8.0-mbstring php8.0-fileinfo php8.0-ctype php8.0-bcmath
```


