#!/usr/bin/env bash

pwd

echo ' <==================> Creating the gcts workspace folder  <======================> '

cd /usr/sap/QE1/D00/

mkdir gcts

chmod 777 gcts

ls -a

echo '==================================== +++++++++ =========== +++++++++ ================================='

java -version

echo '==================================== +++++++++ =========== +++++++++ ================================='

echo ' <================================> Java Machine installation <======================================> '

cd /usr/sap/QE1/D00/

mkdir sapmachine

chmod  777 sapmachine/

cd /usr/sap/QE1/D00/sapmachine

pwd

bash

zypper -n install ca-certificates curl

curl -L -O https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.4/sapmachine-jdk-11.0.4-1.x86_64.rpm

zypper -n --no-gpg-checks install ./sapmachine-jdk-11.0.4-1.x86_64.rpm

echo '==================================== +++++++++ =========== +++++++++ ================================'

java -version

echo '==================================== +++++++++ =========== +++++++++ ================================='

ls -a

echo 'script is successfull executed '


