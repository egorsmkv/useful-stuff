# Sentry

```
docker-compose up -d
docker exec -it sentry_base sentry upgrade
docker exec -it sentry_base sentry createuser --email user@example.com --password example --superuser
```

If you have problems with the `sentry:0470_org_saved_search` migration then just cancel migration process and restart docker-compose.

## Set SMTP options

```
docker exec sentry_base sentry config set mail.use-tls True
docker exec sentry_base sentry config set mail.username 'sentry@example.com'
# docker exec sentry_base sentry config set mail.from 'sentry@example.com'
docker exec sentry_base sentry config set mail.password 'XXXXXXXXXXXXXXXXXXx'
docker exec sentry_base sentry config set mail.port 587
docker exec sentry_base sentry config set mail.port smtp.example.com
```
