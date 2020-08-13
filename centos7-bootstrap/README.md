# Bootstrap a CentOS server

## Basic things

```
yum update

yum install epel-release && yum update

yum install nano vim git unzip curl wget tree htop net-tools python3 python3-pip

pip3 install -U pip

systemctl stop postfix && systemctl disable postfix
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
  libxml2 \
  libxml2-devel \
  libxslt-devel \
  libgcrypt-devel \
  gd \
  gd-devel \
  perl-ExtUtils-Embed \
  GeoIP \
  GeoIP-devel

wget https://nginx.org/download/nginx-1.19.2.tar.gz
tar xf nginx-1.19.2.tar.gz
cd nginx-1.19.2

git clone https://github.com/google/ngx_brotli.git
cd ./ngx_brotli && git submodule update --init && cd ..

./configure \
  --with-pcre \
  --prefix=/opt/nginx-1.19.2 \
  --user=nginx \
  --group=nginx \
  --with-threads \
  --with-file-aio \
  --with-http_ssl_module \
  --with-http_v2_module \
  --with-http_realip_module \
  --with-http_addition_module \
  --with-http_xslt_module=dynamic \
  --with-http_image_filter_module \
  --with-http_geoip_module=dynamic \
  --with-http_sub_module \
  --with-http_dav_module \
  --with-http_flv_module \
  --with-http_mp4_module \
  --with-http_gunzip_module \
  --with-http_gzip_static_module \
  --with-http_auth_request_module \
  --with-http_random_index_module \
  --with-http_secure_link_module \
  --with-http_degradation_module \
  --with-http_slice_module \
  --with-http_stub_status_module \
  --without-http_charset_module \
  --with-http_perl_module \
  --with-mail=dynamic \
  --with-mail_ssl_module \
  --with-stream=dynamic \
  --with-stream_ssl_module \
  --with-stream_realip_module \
  --with-stream_geoip_module=dynamic \
  --with-stream_ssl_preread_module \
  --add-module=./ngx_brotli
```
