## update
sudo apt update -y

KAFKA_VERSION=3.0.0

## Download tgz
wget https://downloads.apache.org/kafka/$KAFKA_VERSION/kafka_2.12-$KAFKA_VERSION.tgz

## Extract tgz
tar -xzvf kafka_2.12-$KAFKA_VERSION.tgz

## Remove tgz
rm kafka_2.12-$KAFKA_VERSION.tgz