#!/bin/bash
set -ex

# Check all listening ports: sudo lsof -nP -iTCP -sTCP:LISTEN

sudo iptables -A DOCKER-USER -i ens3 -s 103.21.244.0/22 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 103.22.200.0/22 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 103.31.4.0/22 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 104.16.0.0/13 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 104.24.0.0/14 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 108.162.192.0/18 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 131.0.72.0/22 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 141.101.64.0/18 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 162.158.0.0/15 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 172.64.0.0/13 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 173.245.48.0/20 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 188.114.96.0/20 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 190.93.240.0/20 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 197.234.240.0/22 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 198.41.128.0/17 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -p tcp -m conntrack --ctorigdstport 443 --ctdir ORIGINAL -j DROP
sudo iptables -A DOCKER-USER -i ens3 -s 103.21.244.0/22 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 103.22.200.0/22 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 103.31.4.0/22 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 104.16.0.0/13 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 104.24.0.0/14 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 108.162.192.0/18 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 131.0.72.0/22 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 141.101.64.0/18 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 162.158.0.0/15 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 172.64.0.0/13 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 173.245.48.0/20 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 188.114.96.0/20 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 190.93.240.0/20 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 197.234.240.0/22 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -s 198.41.128.0/17 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j ACCEPT
sudo iptables -A DOCKER-USER -i ens3 -p tcp -m conntrack --ctorigdstport 80 --ctdir ORIGINAL -j DROP

sudo netfilter-persistent save