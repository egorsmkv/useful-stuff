# Sentry

```
docker-compose up -d
docker exec -it sentry_base sentry upgrade
docker exec -it sentry_base sentry createuser --email user@example.com --password example --superuser
```
