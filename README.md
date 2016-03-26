# owncloud + ssl

This image is derived from the official owncloud image and make a few extentions:

* Volume /etc/apache2/cert to place your certificates and key
  * root_bundle.crt: CertificateChainFile
  * server.crt: CertificateFile
  * server.key: Server key

* Volume /var/log/apache2 that contains the Apache access_log und error_log

* Expose Port 443 for SSL

* an alternative Apache startup script that uses apache2ctl
