#!/bin/sh

oci db autonomous-database generate-wallet --autonomous-database-id "${ATP_OCID}" --password "${ATP_WALLET_PASS}" --file ../resources/wallet.zip 

cd ../resources
unzip -o wallet.zip -d ./wallet/
cd ~

