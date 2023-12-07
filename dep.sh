#!/bin/bash

curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh

sudo apt update -y && sudo apt upgrade -y && sudo apt install python3-pip -y

echo "export PATH=$PATH:$HOME/miniconda3/bin" >> ~/.bashrc

source ~/.bashrc

conda init bash

# conda install -c pytorch pytorch -y

pip3 install -e .