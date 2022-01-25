#!/bin/bash

echo ""
echo "Creating New User: \"$SERVER_USERNAME\""
echo ""

useradd -d /home/$SERVER_USERNAME -m $SERVER_USERNAME
usermod -s /bin/bash deployment
usermod -aG sudo $SERVER_USERNAME
passwd $SERVER_USERNAME
su - $SERVER_USERNAME