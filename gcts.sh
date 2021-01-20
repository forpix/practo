#!/usr/bin/env bash

pwd

echo ' <===> Lets Create the gcts folder  <===> '

cd /usr/sap/QE1/D00/test

mkdir abc

chmod 777 abc

ls -a

echo ' <===> Java Machine installation <===> '

cd /usr/sap/QE1/D00/test/

mkdir def

chmod  777 def/

cd /usr/sap/QE1/D00/test/def

pwd

echo '======= ======== ========'

java -version

echo 'script is successfull executed '

cd /usr/sap/QE1/D00/test/

ls -a



