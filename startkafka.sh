#!/bin/bash
nohup sh $HOME/kafka/bin/zookeeper-server-start.sh $HOME/kafka/config/zookeeper.properties &
echo "starting  zookeeper"
sleep 25  
echo "starting kafka server"
nohup sh $HOME/kafka/bin/kafka-server-start.sh $HOME/kafka/config/server.properties &
