#!/bin/bash

##Machine Update
echo "Machine Updating..."
sleep 3s
clear
sudo apt update -y && sudo apt upgrade -y && install net-tools -y
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
            sudo dpkg --add-architecture i386; sudo apt update -y; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd -y
        sleep 3s
        clear
        echo "Installing CSGO Server"
        sleep 3s
        clear
            username=csgo
            read -p "Choose a Password for csgo: " password
            sudo adduser --gecos "csgo" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh csgoserver"
            su - $username -c "./csgoserver auto-install"

    elif [ "$server" == "doi" ];
        then
        echo "Day of Infamy still under construction."

    elif [ "$server" == "fctr" ];
        then
        echo "Factorio still under construction."

    elif [ "$server" == "gmod" ];
        then
        echo "Gary's Mod still under construction."

    elif [ "$server" == "inss" ];
        then
        echo "Insurgency: Sandstorm still under construction."

    elif [ "$server" == "l4d2" ];
        then
        echo "Left 4 Dead 2 still under construction."

    elif [ "$server" == "mc" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update -y; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat openjdk-17-jre -y
        sleep 3s
        clear
        echo "Installing Minecraft Server"
        sleep 3s
        clear
            username=mc
            read -p "Choose a Password for mc: " password
            sudo adduser --gecos "mc" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
        su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh mcserver"
        su - $username -c "./mcserver auto-install"

    elif [ "$server" == "ns2" ];
        then
        echo "Natural Selection 2 still under construction."

    elif [ "$server" == "ts3" ];
        then
        echo "TeamSpeak still under construction."

    else
        echo "No Server Matching Selection"

    fi
    \