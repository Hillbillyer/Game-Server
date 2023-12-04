# Game-Server
Easily setup fresh Game Servers with Scripts for maintenance and ease of use.

## How to use:

### 1.1. Ubuntu 22.04 Install
- [Ubuntu 22.04](https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-desktop-amd64.iso) *Official Source*
- [Ubuntu Server 22.04](https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso) *Official Source*
<br> *Install onto Bare Metal or as a Virtual Machine.*

### 1.2. Windows Install
To Install on Windows, open Command Prompt and run:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
wsl --install -d Ubuntu-22.04
```
*This will install a Ubuntu Virtual Machine as a Windows App*
<br>[More Info on Windows Linux Subsystem](https://learn.microsoft.com/en-us/windows/wsl/)
<br> - You will then have to reboot the computer. 
<br> - After rebooting, locate the Ubuntu 22.04 app in your start menu and run it. 
<br> - Go through the initial setup until it reads: "user@machine:~$"

### 2. Download and Run the Server Installer Script
Now your machine should be ready to run the code.
```
sudo apt install git -y
git clone https://github.com/Hillbillyer/Game-Server
chmod u+x Game-Server/server-installer.sh
sudo ./Game-Server/server-installer.sh
```
<br>Choose the Server you wish to install from the list and follow any prompts. 


<br>*https://hillbillyer.net*
<br>*contact@hillbillyer.net*
<br>*If you have any issues, feel free to submit an issue or shoot me an email.*