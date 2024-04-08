#!/bin/bash
sed -i '/192.168.255.5/a\      routes:\n        - to: 192.168.1.0/24\n          via: 192.168.255.6' 99-netcfg-vmware.yaml
sed -i '/192.168.255.9/a\      routes:\n        - to: 192.168.2.0/24\n          via: 192.168.255.10' 99-netcfg-vmware.yaml
