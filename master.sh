#!/bin/bash
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial
git clone https://github.com/rosywrt/luci-theme-rosy
svn co https://github.com/garypang13/luci-theme-edge/branches/18.06 ./luci-theme-edge
svn co https://github.com/garypang13/luci-app-dnsfilter/trunk ./luci-app-dnsfilter
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom

svn co https://github.com/project-openwrt/openwrt-gowebdav/trunk ./luci-app-gowebdav
svn co https://github.com/iamaluckyguy/luci-app-smartinfo/trunk ./luci-app-smartinfo
git clone https://github.com/tty228/luci-app-serverchan
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/AdGuardHome
svn co https://github.com/jerrykuku/node-request/trunk ./node-request
svn co https://github.com/lwz322/luci-app-k3screenctrl/trunk ./luci-app-k3screenctrl
svn co https://github.com/lwz322/k3screenctrl/trunk ./k3screenctrl
svn co https://github.com/lwz322/k3screenctrl_build/trunk ./k3screenctrl_build

svn co https://github.com/lisaac/luci-app-dockerman/trunk ./luci-app-dockerman
svn co https://github.com/lisaac/luci-lib-docker/trunk ./luci-lib-docker

svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-theme-opentomcat
git clone https://github.com/koshev-msk/luci-app-modeminfo
svn co https://github.com/jerrykuku/luci-theme-argon/branches/18.06 ./luci-theme-argon
svn co https://github.com/jerrykuku/luci-app-argon-config/trunk ./luci-app-argon-config
git clone https://github.com/esirplayground/luci-app-poweroff
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-netdata
svn co https://github.com/siropboy/sirpdboy-package/trunk/netdata
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-gost
svn co https://github.com/kenzok8/openwrt-packages/trunk/gost
svn co https://github.com/destan19/OpenAppFilter/trunk ./luci-app-oaf
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
svn co https://github.com/Lienol/openwrt-packages/trunk/net/haproxy

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns
svn co https://github.com/littletao08/luci-app-eqos/trunk ./luci-app-eqos
svn co https://github.com/firker/diy-ziyong/trunk/luci-app-wrtbwmon-zhcn
svn co https://github.com/firker/diy-ziyong/trunk/wrtbwmon
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-advanced
svn co https://github.com/garypang13/openwrt-packages/trunk/cpulimit-ng
svn co https://github.com/garypang13/openwrt-packages/trunk/cpulimit
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-cpulimit
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser

svn co https://github.com/siropboy/mypackages/trunk/luci-app-autopoweroff
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-timewol
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-weburl
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-webrestriction
svn co https://github.com/sirpdboy/luci-theme-opentopd/trunk ./luci-theme-opentopd
svn co https://github.com/siropboy/mypackages/trunk/luci-app-koolproxyR
svn co https://github.com/siropboy/mypackages/trunk/luci-app-pptp-vpnserver-manyusers
svn co https://github.com/tuanqing/install-program/trunk ./install-program
svn co https://github.com/tuanqing/openwrt-mentohust/trunk ./openwrt-mentohust
svn co https://github.com/tuanqing/luci-app-mentohust/trunk ./luci-app-mentohust

svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-syncthing

svn co https://github.com/project-openwrt/openwrt-tmate/trunk ./openwrt-tmate
svn co https://github.com/tindy2013/openwrt-subconverter/trunk ./openwrt-subconverter
svn co https://github.com/msylgj/luci-app-tencentddns/trunk ./luci-app-tencentddns
svn co https://github.com/jerrykuku/luci-app-ttnode/trunk ./luci-app-ttnode
svn co https://github.com/zzsj0928/luci-app-serverchand/trunk ./luci-app-serverchand
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-socat
svn co https://github.com/pymumu/luci-app-smartdns/branches/lede ./luci-app-smartdns
svn co https://github.com/pymumu/openwrt-smartdns/trunk ./smartdns
svn co https://github.com/jerrykuku/lua-maxminddb/trunk ./lua-maxminddb
svn co https://github.com/281677160/openwrt-package/branches/update ./luci-app-autoupdate
svn co https://github.com/project-openwrt/openwrt/trunk/package/lean/luci-app-cpufreq


sed -i 's/"Argon 主题设置"/"Argon设置"/g' ./luci-app-argon-config/po/zh-cn/argon-config.po
sed -i 's/"网速控制"/"内网控速"/g' ./luci-app-eqos/files/po/zh-cn/eqos.po


# 生成完整目录清单
cat >> Update.md <<EOF
luci-theme-atmaterial
luci-theme-rosy
luci-theme-edge
luci-theme-infinityfreedom
luci-app-filebrowser
luci-app-gowebdav
luci-app-smartinfo
luci-app-serverchan
node-request
luci-app-k3screenctrl
k3screenctrl
k3screenctrl_build
luci-app-smartdns
smartdns
luci-app-adguardhome
adguardhome
luci-theme-opentomcat
luci-app-modeminfo
luci-theme-argon
luci-app-argon-config
luci-app-poweroff
luci-app-netdata
netdata
luci-app-gost
gost
luci-app-oaf
https-dns-proxy
haproxy
luci-app-dockerman
luci-lib-docker
luci-app-aliddns
luci-app-eqos
cpulimit-ng
cpulimit
luci-app-cpulimit
luci-app-wrtbwmon-zhcn
wrtbwmon
luci-app-advanced
luci-app-autopoweroff
luci-app-control-timewol
luci-app-control-weburl
luci-app-control-webrestriction
luci-theme-opentopd
luci-app-koolproxyR
luci-app-pptp-vpnserver-manyusers
lua-maxminddb
install-program
openwrt-mentohust
luci-app-mentohust
luci-app-syncthing
luci-app-tencentddns
luci-app-ttnode
luci-app-serverchand
luci-app-socat
EOF

# 获取所有更新目录并显示
ls | grep -v 'Update.md' | grep -v 'master.sh' >> UpdateList.md

# 对比Update.md文件里没有的内容，并生成变量
echo 缺失包列表
FOLDERS=`grep -Fxvf UpdateList.md Update.md`
FOLDERSX=`echo $FOLDERS | sed 's/ /、/g'`;echo $FOLDERSX

# 判断变量值，如果有效发送微信通知
if [ -n "$FOLDERS" ]; then  curl https://sc.ftqq.com/$SCKEY.send?text=$FOLDERSX--同步失败; fi
# 删除对比更新目录列表
rm -rf UpdateList.md
rm -rf Update.md


rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/*/.svn
rm -rf ./*/*/.git

rm -rf ./ReadMe.md
rm -rf ./*/ReadMe.md
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0
