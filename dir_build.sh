#**********************************************************
#作用：循环建立多级目录
#用法：dir_build.sh n 。n为要建立目录的级数，如
#dir_build.sh 3,则会在当前目录下建立3级目录文件./F1/F2/F3
#**********************************************************
#! /bin/sh
 
dir_num=$1
i=1
while [ $i -le $dir_num ]
do 
	dir=`pwd`
	mkdir "$dir/F$i"
  cd "./F$i"
	let i++
done
#cp files ./ #拷贝文件files到最后一级目录下
echo `pwd`
ls
exit 0
