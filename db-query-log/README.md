# Log MySQL queries in runtime

## Install

```shell
chmod +x ./disable_query_log.sh
chmod +x ./enable_query_log.sh

mkdir /var/lib/mysql/query_log
```

Edit the `disable_query_log.sh` and `enable_query_log.sh` files to set correct MySQL credentials.

## How to use?

Enable the query log:

```bash
./enable_query_log.sh
```

Disable the query log:

```bash
./disable_query_log.sh
```

Then you can monitor queries like the following:

```bash
tail -f query_log/queries.sql
```
