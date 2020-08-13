# Bootstrap a CentOS server

## Basic things

```
yum update

yum install epel-release && yum update

yum install nano vim git unzip curl wget tree htop net-tools python3 python3-pip

pip3 install -U pip
```

## Update Python 3

```
yum groupinstall "Development Tools"
yum install openssl-devel bzip2-devel libffi-devel

wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz
tar xvf Python-3.8.5.tgz
cd Python-3.8.5
./configure --enable-optimizations
make altinstall
```

## Add SWAP

```
dd if=/dev/zero of=/swapfile count=4096 bs=1MiB && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile   swap    swap    sw  0   0' >> /etc/fstab

echo 'vm.swappiness = 10' >> /etc/sysctl.conf && echo 'vm.vfs_cache_pressure = 50' >> /etc/sysctl.conf
```

## Disable SElinux

```bash
vim /etc/selinux/config # set SELINUX=disabled and reboot
```

## Install Docker & Docker Compose

```
yum install yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl enable docker

curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
```

## Install ACME for obtaining SSL certs

```
wget https://github.com/go-acme/lego/releases/download/v3.8.0/lego_v3.8.0_linux_amd64.tar.gz
tar xf lego_v3.8.0_linux_amd64.tar.gz
mv lego /usr/local/bin

lego --email="foo@bar.com" --domains="example.com" --http run
```

## Install NGINX

```
yum install \
zlib-devel \
openssl \
openssl-devel \
pcre \
pcre-devel \
libxml2-devel \
libxslt-devel \
libgcrypt-devel \
gd \
gd-devel \
perl-ExtUtils-Embed \
GeoIP-devel
```
