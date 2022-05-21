#! /bin/bash
sudo dpkg -i Nessus-10.1.1-ubuntu1110_amd64
sudo systemctl enable nessusd
sudo systemctl status nessusd