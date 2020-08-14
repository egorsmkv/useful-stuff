# Building phpbrew on MacOS

A workaround for building errors:

```
export LDFLAGS="-L/usr/local/openssl-1.0.1u/lib -L/usr/local/opt/bzip2/lib -L/usr/local/opt/curl/lib -L/usr/local/opt/libxml2/lib -L/usr/local/opt/mhash/lib -L/usr/local/opt/oniguruma/lib -L/usr/local/opt/sqlite/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/libiconv/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/mysql/lib"

export CPPFLAGS="-I /usr/local/openssl-1.0.1u/include -I/usr/local/opt/bzip2/include -I/usr/local/opt/curl/include -I/usr/local/opt/mhash/include -I/usr/local/opt/libxml2/include -I/usr/local/opt/oniguruma/include -I/usr/local/opt/sqlite/include -I/usr/local/opt/readline/include -I/usr/local/opt/libiconv/include -I/usr/local/opt/zlib/include -I/usr/local/opt/mysql/include
```
