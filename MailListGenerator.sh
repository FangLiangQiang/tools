#! /bin/sh

vcard_name=$1
vcard_number=$2
i=1
#tel=`echo ${i}|awk '{printf("%04d\n",$0)}'`
#echo $tel
#exit 0

while(( $i<=$vcard_number ))
do

echo "BEGIN:VCARD" >> $vcard_name
echo "VERSION:3.0" >> $vcard_name
echo "N:张;小"$i";;;" >> $vcard_name
echo "FN:张小"$i >> $vcard_name

tel=`echo ${i}|awk '{printf("%04d\n",$0)}'`
echo "TEL;TYPE=CELL:1-345-796-"$tel >> $vcard_name

echo "EMAIL;TYPE=WORK:zhangxiao"$i"@flyaudio.cn" >> $vcard_name

echo "ORG;CHARSET=UTF-8:广州飞歌汽车音响公司" >> $vcard_name
echo "TITLE;CHARSET=UTF-8:软件工程师" >> $vcard_name
echo "END:VCARD" >> $vcard_name

let i=i+1

done

#echo "BEGIN:VCARD" >> $vcard_name
#echo "VERSION:3.0" >> $vcard_name
#echo "N:方;小Q;;;" >> $vcard_name
#echo "FN:方小Q" >> $vcard_name
#echo "TEL;TYPE=CELL:1-311-333-4063" >> $vcard_name
#echo "EMAIL;TYPE=WORK:fangliangqiang@flyaudio.cn" >> $vcard_name
#echo "ORG;CHARSET=UTF-8:广州飞歌汽车音响公司" >> $vcard_name
#echo "TITLE;CHARSET=UTF-8:软件工程师" >> $vcard_name
#echo "END:VCARD" >> $vcard_name

exit 0
