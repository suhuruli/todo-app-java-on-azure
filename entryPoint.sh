#!/bin/bash
BASEDIR=$(dirname $0)
cd $BASEDIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FabricCodePath:$(pwd)
java -Dloader.path=$(pwd)/lib -Djava.library.path=$LD_LIBRARY_PATH -jar  todo-app-java-on-azure-1.0-SNAPSHOT.jar | tee javaprocess.log
sleep 300
