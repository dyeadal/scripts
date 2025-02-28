#!/bin/bash
# Created by github.com/dyeadal

# GET public IP address using ipinfo.io and icanhazip.com
public_src1=$(curl -s https://ipinfo.io/ip)
public_src2=$(curl -s https://icanhazip.com/)

# Compares output. If same prints your public IP address, else return error
if [ "$public_src1" == "$public_src2" ]; then
    echo "Public IP address is: $public_ip"
else
    echo "Public IP address not returning same results via "
    echo "   - ipinfo.io/ip"
    echo "   - icanhazip.com"
fi
