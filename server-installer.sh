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

#TODO: 
#       Add CS2 Support, CSGO Deprecated.
    if [ "$server" == "csgo" ];
        then
        echo "Awaiting CS2 Support"

# Day of Infamy
    elif [ "$server" == "doi" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd -y
        sleep 3s
        clear
        echo "Installing Day of Infamy Server"
        sleep 3s
        clear
            username=doi
            read -p "Choose a Password for doi: " password
            sudo adduser --gecos "doi" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh doiserver"
            su - $username -c "./doiserver auto-install"

# Factorio
    elif [ "$server" == "fctr" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 xz-utils -y
        sleep 3s
        clear
        echo "Installing Factorio Server"
        sleep 3s
        clear
            username=fctr
            read -p "Choose a Password for fctr: " password
            sudo adduser --gecos "fctr" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh fctrserver"
            su - $username -c "./fctrserver auto-install"

# Garry's Mod
    elif [ "$server" == "gmod" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd libtinfo5:i386 -y
        sleep 3s
        clear
        echo "Installing Gary's Mod Server"
        sleep 3s
        clear
            username=gmod
            read -p "Choose a Password for gmod: " password
            sudo adduser --gecos "gmod" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh gmodserver"
            su - $username -c "./gmodserver auto-install"

# Insurgency: Sandstorm
    elif [ "$server" == "inss" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd -y
        sleep 3s
        clear
        echo "Installing Insurgency: Sandstorm Server"
        sleep 3s
        clear
            username=sandstorm
            read -p "Choose a Password for inss: " password
            sudo adduser --gecos "inss" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh inssserver"
            su - $username -c "./inssserver auto-install"

# Left 4 Dead 2
    elif [ "$server" == "l4d2" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd -y
        sleep 3s
        clear
        echo "Installing Left 4 Dead 2 Server"
        sleep 3s
        clear
            username=l4d2
            read -p "Choose a Password for inss: " password
            sudo adduser --gecos "l4d2" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh l4d2server"
            su - $username -c "./l4d2server auto-install"

# Minecraft
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

#TODO: 
#       Add Natural Selection 2 Support.
    elif [ "$server" == "ns2" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd speex:i386 libtbb2 -y
        sleep 3s
        clear
        echo "Installing Natural Selection 2 Server"
        sleep 3s
        clear
            username=ns2
            read -p "Choose a Password for ns2: " password
            sudo adduser --gecos "ns2" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh ns2server"
            su - $username -c "./ns2server update-lgsm"
            read -p "Enter your Steam Username: " steamusername
            read -p "Enter your Steam Password: " steampassword
            echo -e "steamuser=$steamusername\nsteampass=$steampassword" >> /home/ns2/lgsm/config-lgsm/ns2server/common.cfg
            su - $username -c "./ns2server auto-install"

# TeamSpeak
    elif [ "$server" == "ts3" ];
        then
        echo "Installing Dependencies"
        sleep 3s
        clear
            sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libmariadb3 -y
        sleep 3s
        clear
        echo "Installing TeamSpeak Server"
        sleep 3s
        clear
            username=ts3
            read -p "Choose a Password for ts3: " password
            sudo adduser --gecos "ts3" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh ts3server"
            su - $username -c "./ts3server auto-install"

# No Server
    else
        echo "No Server Matching Selection"

    fi
    \

#Feel free to remove this if you modify the script.
echo "Script By: "
echo "
 █████   █████ ███ ████ ████ █████      ███ ████ ████                             
░░███   ░░███ ░░░ ░░███░░███░░███      ░░░ ░░███░░███                             
 ░███    ░███ ████ ░███ ░███ ░███████  ████ ░███ ░███ █████ ████ ██████  ████████ 
 ░███████████░░███ ░███ ░███ ░███░░███░░███ ░███ ░███░░███ ░███ ███░░███░░███░░███
 ░███░░░░░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███░███████  ░███ ░░░ 
 ░███    ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███░███░░░   ░███     
 █████   ████████████████████████████  ███████████████░░███████░░██████  █████    
░░░░░   ░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ░░░░░░░░░░░░░░░  ░░░░░███ ░░░░░░  ░░░░░     
                                                       ███ ░███                   
                                                      ░░██████                    
                                                       ░░░░░░                     
"
echo "https://hillbillyer.net"
echo "contact@hillbillyer.net"