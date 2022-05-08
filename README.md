### Commands

Find large files:

```
find . -type f -size +1G -print 2>/dev/null
```

Get chmod in the number representation:

```
stat --format '%a' <file>
```

Start a connection using OpenSSL to an SMTP server:

```
openssl s_client -starttls smtp -connect smtp.gmail.com:587
```

Show certificate:

```
openssl s_client -showcerts -connect smtp.gmail.com:465 -servername smtp.gmail.com
```

Print information about a certificate:

```
openssl x509 -text -noout -in domain_com.crt
```

Get MX records for a domain:

```
dig mx gmail.com
```

Email send test:

```
# Swaks is an smtp of CURL, install it first:
curl http://www.jetmore.org/john/code/swaks/files/swaks-20130209.0/swaks -o swaks
# Set the permissions for the script so you can run it
chmod +x swaks
# It's based on perl, so install perl
sudo apt-get -y install perl
# now send!
./swaks --auth \
	--server smtp.mailgun.org \
	--au postmaster@YOUR_DOMAIN_NAME \
	--ap 3kh9umujora5 \
	--to bar@example.com \
	--h-Subject: "Hello" \
	--body 'Testing some Mailgun awesomness!'
```

Upload a file to a file share service:

```
curl --upload-file file.txt https://keep.sh -H "Password: passw0101rd"
```

Create a spectrogram:

```
sox file.sln -n spectrogram -o spec_img.png -x 2000
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
FLUSH PRIVILEGES;
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

Determine the size of databases in MySQL:

```
SELECT table_schema AS "Database", SUM(data_length + index_length) / 1024 / 1024 / 1024 AS "Size (GB)" FROM information_schema.TABLES GROUP BY table_schema;
```

Useful queries for PostgeSQL: https://gist.github.com/rgreenjr/3637525

Determine server's disk types:

```
lsblk -d -o name,rota

# 0 means SSD, 1 means HDD
```

Reset audio devices:

```
pulseaudio -k && sudo alsa force-reload
```

Extract channels from a file:

```
ffmpeg -i call.wav -map_channel 0.0.0 speaker_1.wav
ffmpeg -i call.wav -map_channel 0.0.1 speaker_2.wav
```

### Software

#### Monitoring

- htop
- [memcache-top](https://github.com/eculver/memcache-top/blob/master/memcache-top)
- [gmonitor](https://github.com/mountassir/gmonitor) - monitoring of Nvidia GPU usage

### Online tools

- SQL Formatter: http://www.dpriver.com/pp/sqlformat.htm
