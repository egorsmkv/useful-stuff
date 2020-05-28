dhparams:
	openssl dhparam -out dhparams.pem 2048

ssl:
	openssl req -x509 -nodes -new -sha256 -days 60 -newkey rsa:2048 -keyout RootCA.key -out RootCA.pem -subj "/C=US/CN=This-Root-CA"
	openssl x509 -outform pem -in RootCA.pem -out RootCA.crt

	openssl req -new -nodes -newkey rsa:2048 -keyout main_domain.key -out main_domain.csr -subj "/C=US/ST=Country/L=City/O=Org/CN=localhost.local"
	openssl x509 -req -sha256 -days 60 -in main_domain.csr -CA RootCA.pem -CAkey RootCA.key -CAcreateserial -extfile domains.ext -out main_domain.crt

	cp RootCA.crt main_domain.issuer.crt

clean:
	rm main_domain.* RootCA.* dhparams.pem
