#!/bin/bash

##Machine Update
echo "Machine Updating..."
sleep 3s
clear
sudo apt update -y && sudo apt upgrade -y
sleep 3s
clear

##Server Selection
read -p "
What server would you like to install?
-->csgo (CS:GO)
-->doi (Day of Infamy)
-->fctr (Factorio)
-->gmod (Garry's Mod)
-->inss (Insurgency:Sandstorm)
-->l4d2 (Left 4 Dead 2)
-->mc (Minecraft)
-->ns2 (Natural Selection 2)
-->ts3 (TeamSpeak)
" server

##Server Installation
    if [ "$server" == "csgo" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd
        sleep 3s
        clear
        echo "Installing CSGO Server"
        sleep 3s
        clear
            username=csgo
            read -p "Choose a Password: " password
            sudo adduser --gecos "csgo" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh csgoserver"
            su - $username -c "./csgoserver auto-install"

    elif [ "$server" == "doi" ];
        then
        server="./doiserver"

    elif [ "$server" == "fctr" ];
        then
        server="./fctrserver"

    elif [ "$server" == "gmod" ];
        then
        server="./gmodserver"

    elif [ "$server" == "l4d2" ];
        then
        server="./l4d2server"

    elif [ "$server" == "minecraft" ];
        then
        server="./mcserver"

    elif [ "$server" == "ns2" ];
        then
        server="./ns2server"

    elif [ "$server" == "sandstorm" ];
        then
        server="./inssserver"

    elif [ "$server" == "ts3" ];
        then
        server="./ts3server"

    else
        echo "No User matching Selection"

    fi
    \