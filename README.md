常用脚本工具包
玩机，是不是有很多命令或者脚本记不住，因此我整理了一些我个人常用的脚本。
***

# 使用说明
安装依赖（新机器必须运行一次，此后无需运行）

	yum install -y curl wget 2> /dev/null || apt install -y curl wget

安装并运行脚本

	wget -O box.sh https://raw.githubusercontent.com/wangsicong120/box/main/box.sh && chmod +x box.sh && clear && ./box.sh
	
English translation thanks [@Jeffeditae](https://t.me/Jeffeditae)


	wget -O box-en.sh https://raw.githubusercontent.com/wangsicong120/box/main/box-en.sh && chmod +x box-en.sh && clear && ./box-en.sh
***


# 功能说明
1. 服务器检查：
    - Lemonbench 综合测试
    - 三网Speedtest测速
	- 内存压力测试
	- 回程路由追踪
	- Speedtest测速
	- 获取本机IP
	- 流媒体解锁测试
	- 检测/诊断Youtube地域
2. 服务器功能
	- Linux换源脚本
	- ipv4/6优先级调整
	- 虚拟内存SWAP一键安装
	- 一键安装BBR
	- 系统网络配置优化
	- 宝塔中文官方一键安装
	- 宝塔英文官方一键安装（无需验证）
	- 宝塔破解纯净版
	- Cloudflare WARP 一键配置脚本（2021年7月3日添加）
3. 科学上网工具
	- iptables一键中转
	- gost一键中转
	- MTP&TLS 一键脚本
	- xray一键安装8合一脚本
	- v2-ui一键安装
	- wulabing一键xray脚本
	- Ehcoo隧道中转(2021年7月3日添加)

![功能列表](https://cdn.jsdelivr.net/gh/Netflixxp/jcnf-box/img/sm.jpg)
***

