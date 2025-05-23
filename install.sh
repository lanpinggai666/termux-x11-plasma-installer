
if [ -f /data/data/com.termux/files/usr/bin/plasma ]
then 
echo 安装完毕，输入plasma并回车即可启动termux-x11+KDE Plasma ; exit 0
else
echo "#!/data/data/com.termux/files/usr/bin/bash



termux-x11 :1 &
sleep 2
/data/data/com.termux/files/home/containers/scripts/debianbullseye_xrenderkwin_xfce4-panel.sh&
/data/data/com.termux/files/home/containers/scripts/archlinuxarm_plasma.sh
">/data/data/com.termux/files/usr/bin/plasma
chmod +x /data/data/com.termux/files/usr/bin/plasma
sed -i 's/env LD_PRELOAD=/env -u LD_PRELOAD/g' /data/data/com.termux/files/home/containers/scripts/*
#sed -i 's/env LD_PRELOAD=\'\'/env -u LD_PRELOAD/g' /data/data/com.termux/files/home/containers/scripts/*
echo 安装完毕，输入plasma并回车即可启动termux-x11+KDE Plasma
exit 0
fi
