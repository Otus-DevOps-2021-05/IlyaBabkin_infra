#!/bin/bash
sudo apt update
apt install apt-transport-https
echo "https installed"
sudo apt install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v
