#!/bin/bash

cp ./.env.production ./.env
sudo chmod -R 755 ./shell
./shell/help/signature.sh
source ./shell/help/enviroment.sh

PS3='Please enter your choice: '
options=("Install" "Deploy" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install")
			./shell/install.sh
            break
            ;;
        "Deploy")
            ./shell/deploy/run.sh
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done