@echo off
Set /P _ans=Have you installed WSL? Yes/No || Set _ans=NothingChosen
Set _ans=%_ans:&=%
Set _ans=%_ans:"=%

If "%_ans%"=="NothingChosen" goto sub_error
If /i "%_ans%"=="yes" goto sub_yes
If /i "%_ans%"=="no" goto sub_no
goto:eof

:sub_yes
echo Adding Firewall rule to access Game Server.
echo Please only enter one port number.
set /p Port=Enter the Port number for your Game Server: 
echo Get the IP of the Ubuntu Virtual Machine by running "ip addr | grep eth0" and it should be the record next to "inet".
set /p IP=Enter the IP adress of the Ubuntu Virtual Machine:
netsh interface portproxy add v4tov4 listenport=%Port% listenaddress=0.0.0.0 connectport=%Port% connectaddress=%IP%
goto:eof

:sub_no
echo WSL will now be installed, please reboot after it has installed. Press CTL+C to cancel installation.
timeout /t 10
wsl --install -d Ubuntu-22.04
goto:eof

:sub_error
echo Nothing was chosen, try again. 