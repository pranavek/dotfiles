#!/bin/bash

country_code=$1

username=$(secret-tool lookup vpn username)
password=$(secret-tool lookup vpn password)

cd $VPN_CONFIG
vpn_config=$(ls | grep -E "^$country_code.*.udp" | shuf -n 1)

echo "Using $vpn_config"
sudo bash -c "openvpn  --config $vpn_config --auth-user-pass <(echo -e '$username\n$password')"
