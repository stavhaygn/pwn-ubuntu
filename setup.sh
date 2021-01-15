#!/bin/sh

docker build -t pwn-ubuntu:20.04 .
cp ./pu /usr/bin/
echo 'done'