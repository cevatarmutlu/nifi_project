## install Java
sudo apt update -y
sudo apt install openjdk-8-jdk -y

NIFI_VERSION=1.13.2

## Download tar.gz
wget https://archive.apache.org/dist/nifi/$NIFI_VERSION/nifi-$NIFI_VERSION-bin.tar.gz

## Extract tar.gz
tar -xzvf nifi-$NIFI_VERSION-bin.tar.gz

## Remove tar.gz file
rm nifi-$NIFI_VERSION-bin.tar.gz
