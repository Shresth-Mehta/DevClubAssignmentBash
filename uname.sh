#! /bin/sh

if [ $# -ne "2" ]
	then exit 1
else
	while IFS='' read -r line || [ -n "$line" ] ; do
	case $line in
	[a-z]*:x:*[0-9]:*[0-9]:*:*:* ) ;;
	* ) exit 1 ;;
	esac
done < "$1"
	NAME=${2}
	if grep ${NAME} ${1} >/dev/null
	then
		echo "$(awk -F ':' -v name=${NAME} '$0 ~ name {print $5}' input.txt)"
	else
		exit 1
	fi
fi

