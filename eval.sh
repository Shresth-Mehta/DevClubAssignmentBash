#/bin/sh

a=0
while read lines; do
IFS=' ' read -ra line <<< "$lines"
a="$(($a${line[1]}${line[0}))"
done < "$1"
echo "$a"