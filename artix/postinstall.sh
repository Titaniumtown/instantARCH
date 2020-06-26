#!/bin/bash

# this script only runs on artix
# and adjusts some stuff that causes problems during installation

if command -v systemctl; then
    echo "skipping artix hooks"
    exit
fi

sed -i '/Optional TrustAll/d' /etc/pacman.conf
sleep 1