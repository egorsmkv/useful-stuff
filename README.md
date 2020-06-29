### Commands

Start a connection using OpenSSL to an SMTP server.

```
openssl s_client -starttls smtp -connect smtp.gmail.com:587
```

Get MX records for a domain:

```
dig mx gmail.com
```

Upload a file to a file share service:

```
curl --upload-file file.txt https://keep.sh -H "Password: passw0101rd"
```

Open a crash file on Ubuntu:

```
apport-retrace --stdout _usr_lib_xorg_Xorg.0.crash
```

Show all the keys on a memcache instance:

```
memcached-tool localhost:11211 dump | less
```

Add an IP that can access specified port to FirewallD:

```
firewall-cmd --permanent --add-rich-rule='rule family=ipv4 source address=X.X.X.X port port=6379 protocol=tcp accept'
```

### Software

#### Monitoring

- htop
- [memcache-top](https://github.com/eculver/memcache-top/blob/master/memcache-top)
- [gmonitor](https://github.com/mountassir/gmonitor) - monitoring of Nvidia GPU usage

### Online tools

- SQL Formatter: http://www.dpriver.com/pp/sqlformat.htm
