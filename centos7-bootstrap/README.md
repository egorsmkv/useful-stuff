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
``
