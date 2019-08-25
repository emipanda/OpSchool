#!/bin/bash
#add fix to exercise6-fix here

#Checking if input correct
if [ $# -lt 2 ]; then
  echo "Error, wrong input"; exit
fi

#Declaring an array which conatains the folders to copy from input arguments
sourceDir=${@:1:$#-1}

#Declaring destination path (last argument)
destDir=${@: -1}

#Choose the correct source and dest servers by current "hostname" varible
sourceHost=$(hostname)
if [ "$sourceHost" == "server1" ]; then
        destHost="server2"
else
        destHost="server1"
fi

#wc - Print byte counts for each FILE, and a total line if more than one FILE is specified.
#awk - prints the first field
#tail - gives the last string (the total size)
#Calculating size
copiedFilesSize=$(wc -c $sourceDir | awk {'print $1'} | tail -1)

#Transfering files between 2 servers.
scp $sourceDir vagrant@$destHost:$destDir

echo $copiedFilesSize
