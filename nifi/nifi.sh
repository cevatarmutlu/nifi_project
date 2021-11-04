## install Java
sudo apt-get -y install openjdk-8-jdk

NIFI_VERSION=1.13.2

## Download nifi-NIFI_VERSION.tar.gz file
wget https://archive.apache.org/dist/nifi/$NIFI_VERSION/nifi-$NIFI_VERSION-bin.tar.gz

## Extract nifi
tar -xzvf nifi-$NIFI_VERSION-bin.tar.gz

## Remove tar.gz file
rm nifi-$NIFI_VERSION-bin.tar.gz
