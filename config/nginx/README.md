### Generate dhparam.pem

```
openssl dhparam -out /etc/nginx/ssl/dhparams.pem 2048
```

### Get SSL certs

Download the lego binary from this page: https://github.com/go-acme/lego/releases

```
mkdir /etc/nginx/ssl
cd /etc/nginx/ssl
lego --email="user@example.com" --domains="example.com" --http run
```

And then configure the SSL renew process.

### Create folders for logs and the website

```
mkdir /var/log/nginx/default
mkdir /var/log/nginx/example_com

mkdir /var/www/example.com
```

