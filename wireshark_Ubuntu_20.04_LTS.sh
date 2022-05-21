#! /bin/bash
sudo apt-get update
sudo apt install software-properties-common apt-transport-https
sudo add-apt-repository ppa:wireshark-dev/stable
sudo apt update
sudo apt -y install wireshark
sudo add-apt-repository ppa:dreibh/ppa
wireshark --version
sudo usermod -a -G wireshark ubuntu
sudo chgrp wireshark /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
sudo getcap /usr/bin/dumpcap
sudo chmod +x /usr/bin/dumpcap
