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

echo  -e 'checking the present Java Version\n"'

echo -e '=========================================================================================\n'

a=$(java -version 2>&1 >/dev/null) ; set -- $a ;  echo $3

echo -e '==========================================================================================\n'



echo -e ' Java Machine installation\n'


cd /usr/sap/QE1/D00/

mkdir sapmachine

chmod  777 sapmachine

cd /usr/sap/QE1/D00/sapmachine/

pwd

bash

zypper -n install ca-certificates curl

curl -L -O https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.4/sapmachine-jdk-11.0.4-1.x86_64.rpm

zypper -n --no-gpg-checks install ./sapmachine-jdk-11.0.4-1.x86_64.rpm

echo  -e ' checking the updated Java Version \n'

echo '============================================================================================='

b=$(java -version 2>&1 >/dev/null) ; set -- $b ;  echo $3

echo '============================================================================================='

ls -a

echo "$(tput setaf 2)=============== script executed successfully ================="
