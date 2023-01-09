#!/bin/sh
if [ $1 ];then
Port=$1
else 
Port=8080
fi
PORT=$Port npm start     


