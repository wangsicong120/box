
#颜色
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}

#服务器检查项目
#Lemonbench 综合测试
function Lemonbench(){
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}

#三网Speedtest测速
function 3speed(){
bash <(curl -Lso- https://raw.githubusercontent.com/BlueSkyXN/SpeedTestCN/main/superspeed.sh)
}

#Memorytest 内存压力测试
function memorytest(){
yum install wget -y
yum groupinstall "Development Tools" -y
wget https://raw.githubusercontent.com/FunctionClub/Memtester/master/memtester.cpp
blue "Download completed"
gcc -l stdc++ memtester.cpp
./a.out
}

#Route-trace 回城路由追踪
function rtsh(){
wget -O "/root/jcnf.sh" "https://raw.githubusercontent.com/Netflixxp/jcnfbesttrace/main/jcnf.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/jcnf.sh"
chmod 777 "/root/jcnf.sh"
yellow "After the download is complete, execute bash /root/jcnf.sh to run again"
bash "/root/jcnf.sh"
}

#Speedtest for Linux·下载
function speedtest-linux(){
wget -O "/root/speedtest" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/speedtest" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/speedtest"
chmod 777 "/root/speedtest"
yellow "After the download is complete, execute bash /root/speedtest to run again"
./speedtest
}

#获取本机IP
function getip(){
echo  
curl ip.p3terx.com
echo
}

#nf.sh 流媒体解锁测试
function nf(){
        #安装JQ
	if [ -e "/etc/redhat-release" ];then
	yum install epel-release -y -q > /dev/null;
	yum install jq -y -q > /dev/null;
	elif [[ $(cat /etc/os-release | grep '^ID=') =~ ubuntu ]] || [[ $(cat /etc/os-release | grep '^ID=') =~ debian ]];then
	apt-get update -y > /dev/null;
	apt-get install jq > /dev/null;
	else 
	echo -e "${Font_Red}请手动安装jq${Font_Suffix}";
	exit;
	fi
        jq -V > /dev/null 2>&1;
        if [ $? -ne 0 ];then
	echo -e "${Font_Red}请手动安装jq${Font_Suffix}";
	exit;
        fi
bash <(curl -sSL https://raw.githubusercontent.com/Netflixxp/NF/main/nf.sh)
}

#检测/诊断Youtube地域
function tubecheck(){
wget -O "/root/tubecheck" "https://cdn.jsdelivr.net/gh/sjlleo/TubeCheck/CDN/tubecheck_1.0beta_linux_amd64" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tubecheck"
chmod 777 "/root/tubecheck"
yellow "After the download is complete, you can execute ./tubecheck to run again"
./tubecheck
}

#服务器功能调试
#ChangeSource Linux换源脚本·下载
function cssh(){
wget -O "/root/changesource.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/changesource.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/changesource.sh"
chmod 777 "/root/changesource.sh"
yellow "Download completed"
echo
green "Please enter the following command to switch the corresponding source"
green " =================================================="
echo
green " bash changesource.sh Switch recommended source "
green " bash changesource.sh cn  Switch to the University of Science and Technology of China "
green " bash changesource.sh aliyun Switch Alibaba source "
green " bash changesource.sh 163 Switch NetEase source "
green " bash changesource.sh aws Switch AWS Amazon Cloud Source "
green " bash changesource.sh restore Restore default source "
}

#IPV.SH ipv4/6优先级调整
function ipvsh(){
wget -O "/root/ipv4.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/ipv4.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/ipv4.sh"
chmod 777 "/root/ipv4.sh"
yellow "After the download is complete, execute bash /root/ipv4.sh to run again"
bash "/root/ipv4.sh"
}

#SWAP一键安装/卸载脚本
function swapsh(){
wget -O "/root/swap.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/swap.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/swap.sh"
chmod 777 "/root/swap.sh"
yellow "After the download is complete, you can also enter bash /root/swap.sh Run manually"
bash "/root/swap.sh"
}

#安装BBR
function bbr(){
wget -O "/root/tcp.sh" "https://github.000060000.xyz/tcp.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tcp.sh"
chmod 777 "/root/tcp.sh"
yellow "After the download is complete, you can also enter bash /root/tcp.sh Run manually"
bash "/root/tcp.sh"
}

#系统网络配置优化
function system-best(){
	sed -i '/net.ipv4.tcp_retries2/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_slow_start_after_idle/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_fastopen/d' /etc/sysctl.conf
	sed -i '/fs.file-max/d' /etc/sysctl.conf
	sed -i '/fs.inotify.max_user_instances/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_syncookies/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_fin_timeout/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_tw_reuse/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_max_syn_backlog/d' /etc/sysctl.conf
	sed -i '/net.ipv4.ip_local_port_range/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_max_tw_buckets/d' /etc/sysctl.conf
	sed -i '/net.ipv4.route.gc_timeout/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_synack_retries/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_syn_retries/d' /etc/sysctl.conf
	sed -i '/net.core.somaxconn/d' /etc/sysctl.conf
	sed -i '/net.core.netdev_max_backlog/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_timestamps/d' /etc/sysctl.conf
	sed -i '/net.ipv4.tcp_max_orphans/d' /etc/sysctl.conf
	sed -i '/net.ipv4.ip_forward/d' /etc/sysctl.conf

echo "net.ipv4.tcp_retries2 = 8
net.ipv4.tcp_slow_start_after_idle = 0
fs.file-max = 1000000
fs.inotify.max_user_instances = 8192
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_tw_reuse = 1
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_max_syn_backlog = 16384
net.ipv4.tcp_max_tw_buckets = 6000
net.ipv4.route.gc_timeout = 100
net.ipv4.tcp_syn_retries = 1
net.ipv4.tcp_synack_retries = 1
net.core.somaxconn = 32768
net.core.netdev_max_backlog = 32768
net.ipv4.tcp_timestamps = 0
net.ipv4.tcp_max_orphans = 32768
# forward ipv4
#net.ipv4.ip_forward = 1">>/etc/sysctl.conf
sysctl -p
	echo "*               soft    nofile           1000000
*               hard    nofile          1000000">/etc/security/limits.conf
	echo "ulimit -SHn 1000000">>/etc/profile
	read -p "The VPS needs to be restarted for the system optimization configuration to take effect. Do you want to restart now? [Y/n] :" yn
	[ -z "${yn}" ] && yn="y"
	if [[ $yn == [Yy] ]]; then
		echo -e "${Info} VPS restarting..."
		reboot
	fi
}

#宝塔面板 官方版·一键安装
function btnew(){
wget -O "/root/install.sh" "http://download.bt.cn/install/install_6.0.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/install.sh"
chmod 777 "/root/install.sh"
blue "Download completed"
bash "/root/install.sh"
}

#宝塔面板英文官方版·一键安装
function aaPanel(){
wget -O "/root/aaPanel.sh" "http://www.aapanel.com/script/install_6.0_en.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/aaPanel.sh"
chmod 777 "/root/aaPanel.sh"
blue "Download completed"
bash "/root/aaPanel.sh"
}

#宝塔面板破解版·一键安装
function btpj(){
wget -O "/root/btpj.sh" "http://v7.hostcli.com/install/install_6.0.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/btpj.sh"
chmod 777 "/root/btpj.sh"
blue "Download completed"
bash "/root/btpj.sh"
}

#科学上网工具
#iptables.sh iptable中转
function iptsh(){
wget -O "/root/iptables.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/main/sh/iptables.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/iptables.sh"
chmod 777 "/root/iptables.sh"
yellow "The download is complete, you can also enter bash /root/iptables.sh Run manually"
bash "/root/iptables.sh"
}

#gost.sh gost一键中转
function gost(){
wget -O "/root/gost.sh" "https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/gost.sh"
chmod 777 "/root/gost.sh"
yellow "The download is complete, you can also enter bash /root/gost.sh Run manually"
bash "/root/gost.sh"
}

#MTP&TLS 一键脚本
function mtp(){
wget -O "/root/mtp.sh" "https://raw.githubusercontent.com/sunpma/mtp/master/mtproxy.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/mtp.sh"
chmod 777 "/root/mtp.sh"
yellow "The download is complete, you can also enter bash /root/mtp.sh Run manually"
bash "/root/mtp.sh"
}

#xray.sh xray一键安装8合一
function xray(){
wget -O "/root/xray.sh" "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/xray.sh"
chmod 777 "/root/xray.sh"
yellow "The download is complete, you can also enter bash /root/xray.sh Run manually"
bash "/root/xray.sh"
}

#wulabing.sh wulabingxray安装脚本
function wulabing(){
wget -O "/root/wulabing.sh" "https://raw.githubusercontent.com/wulabing/Xray_onekey/main/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/wulabing.sh"
chmod 777 "/root/wulabing.sh"
yellow "The download is complete, you can also enter bash /root/wulabing.sh Run manually"
bash "/root/wulabing.sh"
}

#v2-ui.sh 一键安装
function v2-ui(){
bash <(curl -Ls https://blog.sprov.xyz/v2-ui.sh)
}

# Cloudflare WARP 一键配置脚本
function WARP(){
bash <(curl -fsSL git.io/warp.sh) menu
}

# Ehcoo隧道中转
function ehco(){
bash <(curl -fsSL https://leo.moe/ehco.sh)
}

#主菜单
function start_menu(){
    clear
    red " jcnf BOX" 
    green " https://github.com/Netflixxp/jcnf-box "
    green " blog https://ybfl.xyz "
    green " TG https://t.me/mffjc "
	
	yellow " =======Server check============================== "
    green " 1. Lemonbench Comprehensive test "
    green " 2. China Telecom Operator Speedtest "
    green " 3. Memory stress test "
    green " 4. Backhaul route tracking " 
    green " 5. Speedtest test "
    green " 6. Get local IP "
    green " 7. Streaming media unlock test "
    green " 8. Detection/diagnosis of Youtube area "
	
    yellow " =======Server function============================== "
    green " 11. Linux change source script "
    green " 12. ipv4/6 priority adjustment " 
    green " 13. Virtual memory SWAP "
    green " 14. One-click installation of BBR "
    green " 15. System network configuration optimization "
    green " 16. BaoTa "
    green " 17. aapanel "
    green " 18. BaoTa Cracked version "
    green " 19. Cloudflare WARP "

    yellow " =======Proxy tool============================ "
    green " 21. iptables "
    green " 22. gost "
    green " 23. MTP&TLS "
    green " 24. xray "
    green " 25. v2-ui "
    green " 26. wulabing "
    green " 27. Ehcoo "
	
    yellow " =============================================== "
    green " 0. Exit script"
    echo
    read -p "Please enter the number:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           Lemonbench
	;;
        2 )
           3speed
	;;
        3 )
           memorytest
	;;
        4 )
           rtsh
	;;
        5 )
           speedtest-linux
	;;
	    6 )
           getip
	;;
	    7 )
           nf
	;;
		8 )
           tubecheck
	;;
		11 )
           cssh
	;;
		12 )
           ipvsh
	;;
		13 )
           swapsh
	;;
		14 )
           bbr
	;;
		15 )
           system-best
	;;
		16 )
           btnew
	;;
		17 )
           aaPanel
	;;
		18 )
           btpj
	;;
		19 )
           WARP
	;;
		21 )
           iptsh
	;;
		22 )
           gost
	;;
		23 )
           mtp
	;;
		24 )
           xray
	;;
		25 )
           v2-ui
	;;
		26 )
           wulabing
	;;
		27 )
           ehco
	;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "Please enter the correct number!"
            start_menu
        ;;
    esac
}


start_menu "first"
