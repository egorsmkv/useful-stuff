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
