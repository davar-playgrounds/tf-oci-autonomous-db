#!/bin/sh

oci db autonomous-database generate-wallet --autonomous-database-id "${ATP_OCID}" --password "${ATP_WALLET_PASS}" --file ../resources/wallet.zip 

cd ../resources
unzip -o wallet.zip -d ./wallet/

cd wallet
export WALLET_DIR=`pwd`

sed -i "s|DIRECTORY=\"[^\"]*|DIRECTORY=\"${WALLET_DIR}|" sqlnet.ora 

export TNS_ADMIN=${WALLET_DIR}

cd ~

