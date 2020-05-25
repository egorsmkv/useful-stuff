# How to create an HTTPS certificate for localhost domains

This focuses on generating the certificates for loading local virtual hosts hosted on your computer, for development only.


**Do not use self-signed certificates in production !**
For online certificates, use Let's Encrypt instead ([tutorial](https://gist.github.com/cecilemuller/a26737699a7e70a7093d4dc115915de8)).



## Certificate authority (CA)

Generate `RootCA.pem`, `RootCA.key` & `RootCA.crt`:

	openssl req -x509 -nodes -new -sha256 -days 1024 -newkey rsa:2048 -keyout RootCA.key -out RootCA.pem -subj "/C=US/CN=Example-Root-CA"
	openssl x509 -outform pem -in RootCA.pem -out RootCA.crt

Note that `Example-Root-CA` is an example, you can customize the name.


## Domain name certificate

Let's say you have two domains `fake1.local` and `fake2.local` that are hosted on your local machine
for development (using the `hosts` file to point them to `127.0.0.1`).

First, create a file `domains.ext` that lists all your local domains:

	authorityKeyIdentifier=keyid,issuer
	basicConstraints=CA:FALSE
	keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
	subjectAltName = @alt_names
	[alt_names]
	DNS.1 = localhost
	DNS.2 = fake1.local
	DNS.3 = fake2.local

Generate `localhost.key`, `localhost.csr`, and `localhost.crt`:

	openssl req -new -nodes -newkey rsa:2048 -keyout localhost.key -out localhost.csr -subj "/C=US/ST=YourState/L=YourCity/O=Example-Certificates/CN=localhost.local"
	openssl x509 -req -sha256 -days 1024 -in localhost.csr -CA RootCA.pem -CAkey RootCA.key -CAcreateserial -extfile domains.ext -out localhost.crt

Note that the country / state / city / name in the first command  can be customized.

You can now configure your webserver, for example with Apache:

	SSLEngine on
	SSLCertificateFile "C:/example/localhost.crt"
	SSLCertificateKeyFile "C:/example/localhost.key"


## Trust the local CA

At this point, the site would load with a warning about self-signed certificates.
In order to get a green lock, your new local CA has to be added to the trusted Root Certificate Authorities.


### Windows 10: Chrome, IE11 & Edge

Windows 10 recognizes `.crt` files, so you can right-click on `RootCA.crt` > `Install` to open the import dialog.

Make sure to select "Trusted Root Certification Authorities" and confirm.

You should now get a green lock in Chrome, IE11 and Edge.


### Windows 10: Firefox

There are two ways to get the CA trusted in Firefox.

The simplest is to make Firefox use the Windows trusted Root CAs by going to `about:config`,
and setting `security.enterprise_roots.enabled` to `true`.

The other way is to import the certificate by going
to `about:preferences#privacy` > `Certificats` > `Import` > `RootCA.pem` > `Confirm for websites`.

--

> Copied from https://gist.github.com/cecilemuller/9492b848eb8fe46d462abeb26656c4f8
