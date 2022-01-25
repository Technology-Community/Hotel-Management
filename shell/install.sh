#!/bin/bash

PS3='Do you want to install ? Please enter your choice: '
options=("Docker" "SSL" "SWAP" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Docker")
            ./shell/install/docker/install.sh
            break
            ;;
        "SSL")
            ;;
        "SWAP")
            ./shell/install/swap/run.sh
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done