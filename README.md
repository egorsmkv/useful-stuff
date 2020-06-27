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
