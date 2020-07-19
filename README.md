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

Add/Remove an IP that can access specified port to FirewallD:

```
firewall-cmd --permanent --add-rich-rule='rule family=ipv4 source address=X.X.X.X port port=6379 protocol=tcp accept'
firewall-cmd --reload

# to remove
firewall-cmd --permanent --remove-rich-rule 'rule family=ipv4 source address=X.X.X.X port port=6379 protocol=tcp accept'

# to check
firewall-cmd --list-all
```

Add a user for Percona Monitor and Management:

```
CREATE USER pmm@'%' IDENTIFIED BY 'pass';
GRANT SELECT, PROCESS, SUPER, REPLICATION CLIENT, RELOAD ON *.* TO 'pmm'@'%';
GRANT SELECT, UPDATE, DELETE, DROP ON performance_schema.* TO 'pmm'@'%';
```

Read the General MySQL log:

Create the log file:

```
touch /var/log/mysql.log
tail -f /var/log/mysql.log
```

Enable logging:

```
SET global general_log_file='/var/log/mysql.log';
SET global log_output = 'file';
SET global general_log = on;
```

### Software

#### Monitoring

- htop
- [memcache-top](https://github.com/eculver/memcache-top/blob/master/memcache-top)
- [gmonitor](https://github.com/mountassir/gmonitor) - monitoring of Nvidia GPU usage

### Online tools

- SQL Formatter: http://www.dpriver.com/pp/sqlformat.htm
