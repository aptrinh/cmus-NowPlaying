#!bin/bash

echo "Now printing current song to \"nowplaying.txt\" "
#test
#echo "$(cmus-remote -Q | grep "tag artist" | sed s/"tag artist"/""/g | sed '1s/^.//')" "-""$(cmus-remote -Q | grep "tag title" | sed s/"tag title"/""/g)"
echo "Press any key to exit"

while [ true ] ; do
	echo "$(cmus-remote -Q | grep "tag artist" | sed s/"tag artist"/""/g | sed '1s/^.//')" "-""$(cmus-remote -Q | grep "tag title" | sed s/"tag title"/""/g)" > nowplaying.txt
	echo -en "\r\033[K$(cat "nowplaying.txt")"
	read -t 3 -n 1
if [ $? = 0 ] ; then
	exit;
fi
done
