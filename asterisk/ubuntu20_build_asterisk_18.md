# Building Asterisk 18 on Ubuntu 20

Create a machine using **multipass**:

```
multipass launch -c 1 -d 4G -m 512M -n asterisk18
```

Shell into the machine and enter as root:

```
multipass shell asterisk18

sudo -i
```

Update the system:

```
apt-get update
apt-get upgrade
```

Install the dependencies:

```
apt-get install build-essential
apt-get install git-core subversion wget libjansson-dev sqlite autoconf automake libxml2-dev libncurses5-dev libtool
```

Download Asterisk and extract it:

```
https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18.1.1.tar.gz
tar xf asterisk-18.1.1.tar.gz
```
