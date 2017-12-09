#! /bin/sh

#*************************************************************************************************#
#printk打印的信息级别有8级:KERN_EMERG KERN_ALERT KERN_CRIT KERN_ERR KERN_WARNING KERN_NOTICE KERN_INFO
#KERN_DEBUG,对应的数字分别是0-7。数字越低，等级越高。
#
#可以通过文本文件cat /proc/sys/kernel/printk 读写控制台记录级别. 这个文件有 4 个整型值: 当前记录级别,适用没有明确
#记录级别的消息的缺省级别,允许的最小记录级别,以及启动时缺省记录级别. 写一个单个值到这个文件就改变当前记录级别成这个值; 因此,
#例如, 你可以使所有内核消息出现在控制台, 通过简单地输入:echo 8 > /proc/sys/kernel/printk
#
#可以查看内核打印信息的方法：cat /var/log/syslog或者用dmesg命令查看
#
#
#因为在ubuntu14.04中无法把内核信息打印到终端，所以只好用dmesg命令查看
#
#
#
#*************************************************************************************************#

while true
do
	dmesg -c
#cat /var/log/syslog | grep -iE "hello"
done
