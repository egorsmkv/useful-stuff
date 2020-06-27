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

Show all the keys in a memcache server:

```
memcached-tool localhost:11211 dump | less
```

### Software

#### Monitoring

- htop
- [memcache-top](https://github.com/eculver/memcache-top/blob/master/memcache-top)
