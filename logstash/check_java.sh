#!/bin/sh

java -version
if [ $? -eq 0 ];then
    echo "MW_SUCCESS"
else
    echo "java not installed"
fi
