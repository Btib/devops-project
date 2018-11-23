#!/usr/bin/env bash
apt update
apt install -y openjdk-8-jdk
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get install -y jenkins
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y ansible
