#!/bin/bash
array=$@
number_file=$#
i=1
echo -n "Nhap phan dau ten file moi: "
read name_new
function kiem_tra() {
	if [ -e "$1" ]
		then
			if [ -f "$1" ]
				then
					rename_file $1
			fi
	fi
}
function rename_file(){
	name="$name_new$i"
	echo "`mv $1 $name`"
	echo "$1 -> $name"
}
echo -e "\nCac file da doi ten: "
for file in $@
	do
		kiem_tra $file
		i=$((i+1))
done
