#!/usr/bin/env bash

pwd

DIR="/usr/sap/QE1/D00"

if [ -d "$DIR" ] 
then
    echo " '$DIR' exists." 
else
    echo " '$DIR' does not exists, creating Directory"
    cd /usr/sap/QE1/
    mkdir D00
    chmod 777 D00
    ls -a
fi

echo ' Creating the gcts workspace folder  '

echo '  '

cd /usr/sap/QE1/D00/

mkdir gcts

chmod 777 gcts

ls -a

echo 'checking the present Java Version'

echo '=========================================================================================='

JAVA_VERSION='java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }''

echo $JAVA_VERSION

echo '=========================================================================================='

echo '  '

echo ' Java Machine installation  '

echo '  '

cd /usr/sap/QE1/D00/

mkdir sapmachine

chmod  777 sapmachine

cd /usr/sap/QE1/D00/sapmachine/

pwd

bash

zypper -n install ca-certificates curl

curl -L -O https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.4/sapmachine-jdk-11.0.4-1.x86_64.rpm

zypper -n --no-gpg-checks install ./sapmachine-jdk-11.0.4-1.x86_64.rpm

echo ' checking the updated Java Version '

echo '============================================================================================='

JAVA_VERSION='java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }''

echo $JAVA_VERSION

echo '============================================================================================='

ls -a

echo  "\033[0;36m script is successfully executed"

echo 'script is successfully executed '
