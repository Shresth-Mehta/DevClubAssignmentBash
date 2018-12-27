#! /bin/sh

cd $1 2>/dev/null

if [ $? -ne "0" ]
 then 
 exit 1
fi

if [ -z $2 ]
 then 
 ls -p | grep -v / | wc -l
else
  ls *$2 -l > /dev/null 2>&1 
  if [ $? -ne "0" ]
   then
   echo 0
   exit 1
  else 
   ls *$2 -l | wc -l
  fi  
fi
