# Sentry

```
docker-compose up -d
docker exec -it sentry_base sentry upgrade
docker exec -it sentry_base sentry syncdb
docker exec -it sentry_base sentry createuser --email user@example.com --password example --superuser
```

If you have problems with the `sentry:0470_org_saved_search` migration then just cancel migration process and restart docker-compose.

## Problems

```
ProgrammingError: ProgrammingError('function sentry_increment_project_counter(integer, integer) does not exist\nLINE 2:                 select sentry_increment_project_counter(1, 1...\n                               ^\nHINT:  No function matches the given name and argument types. You might need to add explicit type casts.\n',)
```

Solution: https://github.com/getsentry/sentry/issues/9270#issuecomment-409577582
