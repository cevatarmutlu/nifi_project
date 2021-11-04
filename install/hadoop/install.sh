## install Java
sudo apt update -y
sudo apt install openjdk-8-jdk -y

## Version
HADOOP_VERSION=3.2.2

## Download tar.gz
wget https://dlcdn.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

## Extract tar.gz
tar xzf hadoop-$HADOOP_VERSION.tar.gz

## Remove tar.gz
rm hadoop-$HADOOP_VERSION.tar.gz

## Write .bashrc
#Hadoop Related Options
echo "HADOOP_VERSION="$HADOOP_VERSION >> $HOME/.bashrc
echo '
export HADOOP_HOME=$HOME/hadoop-$HADOOP_VERSION
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/nativ"
' >> $HOME/.bashrc

source $HOME/.bashrc