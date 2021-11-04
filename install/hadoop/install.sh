## install Java
sudo apt update -y
sudo apt install openjdk-8-jdk openssh-server openssh-client -y


ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys


## Version
HADOOP_VERSION=3.2.2

## Download tar.gz
wget https://dlcdn.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

## Extract tar.gz
tar -xzvf hadoop-$HADOOP_VERSION.tar.gz

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