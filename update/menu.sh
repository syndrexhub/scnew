#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e  "$PURPLE  .-------------------------------------------------------."
echo -e  "$PURPLE  |                    $Blink $yell Dashboard Menu$NC                   $PURPLE|"
echo -e  "$PURPLE  '-------------------------------------------------------'$NC"
echo -e "   $green 1)$NC $yell SSH & OpenVPN Menu        $green  7)$NC $yell SHADOWSOCKSR MENU"
echo -e "   $green 2)$NC $yell L2TP MENU                 $green  8)$NC $yell VMESS MENU"
echo -e "   $green 3)$NC $yell PPTP MENU                 $green  9)$NC $yell VLESS MENU"
echo -e "   $green 4)$NC $yell SSTP MENU                 $green 10)$NC $yell TROJAN GFW MENU"
echo -e "   $green 5)$NC $yell WIREGUARD MENU            $green 11)$NC $yell TROJAN GO MENU"
echo -e "   $green 6)$NC $yell SHADOWSOCKS MENU          $green 12)$NC $red GRPC MENU"
echo -e "                        $green 13)$NC $yell NEXT MENU"
echo -e  "$PURPLE  .-------------------------------------------------------."
echo -e  "$PURPLE  |                $yell Script status : Premium$NC               $PURPLE|"
echo -e  "$PURPLE  '-------------------------------------------------------'$NC"
echo -e   ""read -p "Select From Options [ 1 - 12 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
setmenu
;;
esac
