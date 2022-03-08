
#!/bin/bash
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
CYAN='\e[36m'
LIGHT='\033[0;37m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
# VPS Information
Checkstart1=$(ip route | grep default | cut -d ' ' -f 3 | head -n 1);
if [[ $Checkstart1 == "venet0" ]]; then
    clear
	  lan_net="venet0"
    typevps="OpenVZ"
    sleep 1
else
    clear
		lan_net="eth0"
    typevps="KVM"
    sleep 1
fi
#EDIT IZIN
clear
# DNS Patch
tipeos2=$(uname -m)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# Download
download=`grep -e "lo:" -e "wlan0:" -e "eth0" /proc/net/dev  | awk '{print $2}' | paste -sd+ - | bc`
downloadsize=$(($download/1073741824))
# Upload
upload=`grep -e "lo:" -e "wlan0:" -e "eth0" /proc/net/dev | awk '{print $10}' | paste -sd+ - | bc`
uploadsize=$(($upload/1073741824))
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# Shell Version
shellversion=""
shellversion=Bash
shellversion+=" Version"
shellversion+=" ${BASH_VERSION/-*}"
versibash=$shellversion
# Getting OS Information
source /etc/os-release
Versi_OS=$VERSION
ver=$VERSION_ID
Tipe=$NAME
URL_SUPPORT=$HOME_URL
basedong=$ID
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
domain=$(cat /etc/v2ray/domain)
Sver=$(cat /home/version)
tele=$(cat /home/contact)
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	uram=$( free -m | awk 'NR==2 {print $3}' )
	fram=$( free -m | awk 'NR==2 {print $4}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )

  echo -e "                $green $Bold System Information $NC"
	echo -e "   $green VPS Type             :$NC  $typevps"
	echo -e "   $green CPU Model            :$NC $cname"
	echo -e "   $green CPU Frequency        :$NC $freq MHz"
	echo -e "   $green Number Of Cores      :$NC  $cores"
	echo -e "   $green CPU Usage            :$NC  $cpu_usage"
	echo -e "   $green Operating System     :$NC  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
	echo -e "   $green OS Family            :$NC  `uname -s`"
	echo -e "   $green Kernel               :$NC  `uname -r`"
	echo -e "   $green Bash Ver             :$NC  $versibash"
	echo -e "   $green Total Amount Of RAM  :$NC  $tram MB"
	echo -e "   $green Used RAM             :$NC  $uram MB"
	echo -e "   $green Free RAM             :$NC  $fram MB"
	echo -e "   $green System Uptime        :$NC  $uptime $DF( From VPS Booting )"
	echo -e "   $green Download             :$NC  $downloadsize GB ( From Startup / VPS Booting )"
	echo -e "   $green Upload               :$NC  $uploadsize GB ( From Startup / VPS Booting )"
	echo -e "   $green Isp Name             :$NC  $ISP"
	echo -e "   $green Domain               :$NC  $domain"
  echo -e "   $green Ip Vps               :$NC  $IPVPS"	
	echo -e "   $green City                 :$NC  $CITY"
	echo -e "   $green Time                 :$NC  $WKT"
	echo -e "   $green Day                  :$NC  $DAY"
	echo -e "   $green Date                 :$NC  $DATE"
	echo -e "   $green Telegram             :$NC  $tele"
	echo -e "   $green Script Version       :$NC  $Sver"

echo -e "$y                  MENU UTAMA $wh"
echo -e "$y               Script nikstore $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  SSH & OpenVPN MENU  $wh"
echo -e "$yy 2$y.  L2TP MENU$wh"
echo -e "$yy 3$y.  PPTP MENU$wh"
echo -e "$yy 4$y.  SSTP MENU$wh"
echo -e "$yy 5$y.  WIREGUARD MENU$wh"
echo -e "$yy 6$y.  SHADOWSOCKS MENU$wh"
echo -e "$yy 7$y.  SHADOWSOCKSR MENU$wh"
echo -e "$yy 8$y.  XRAY VMESS MENU$wh"
echo -e "$yy 9$y.  XRAY VLESS MENU$wh"
echo -e "$yy 10$y. XRAY TROJAN MENU$wh"
echo -e "$yy 11$y. TROJAN GO MENU$wh"
echo -e "$yy 12$y. XRAY GRPC MENU$wh"
echo -e "$yy 13$y. SLOWDNS MENU (OFF)$wh"
echo -e "$yy 14$y. CEK SEMUA IP PORT$wh"
echo -e "$yy 15$y. CEK SEMUA SERVICE VPN$wh"
echo -e "$yy 16$y. UPDATE MENU (2x)$wh"
echo -e "$yy 17$y. SL-FIX (Perbaiki Error SSLH+WS-TLS setelah reboot)$wh"
echo -e "$yy 18$y. Settings (Pengaturan)$wh"
echo -e "$yy 19$y. Exit (Keluar)$wh"
echo -e "$yy 20$y. copyrepo (Salin Repo Script Mantap)$wh"
echo -e "$yy 21$y. menuinfo (Untuk Mendapatkan Informasi)$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 21 ] : " menu
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
slowdnsmenu
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
19)
clear
exit
;;
20)
clear
copyrepo
;;
21)
clear
menuinfo
;;
*)
clear
menu
;;
esac
