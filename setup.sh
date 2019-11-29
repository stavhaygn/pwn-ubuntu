#!/bin/sh

docker build -t pwn-ubuntu:18.04 .
cp ./pu /usr/bin/
echo 'done'