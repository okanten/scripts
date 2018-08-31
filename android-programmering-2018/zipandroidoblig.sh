#! /bin/bash
fullname="YourNameHere" # Put your name here without spaces (e.g.: JohnDoe)

display_usage() {
	echo "You need to specify a folder"
	echo -e "\nUsage: ./${0##*/} /path/to/folder \n"
}

if [  $# -le 0 ]
then
	display_usage
	exit 1
fi

basename=$(basename $1)
rundir=$(pwd) # Extracts current working directory
rm -rf /tmp/$basename/
cp -R $1 /tmp/$basename/
mv -n /tmp/$basename/app/build/outputs/apk/debug/app-debug.apk /tmp/$basename/app-debug.apk # Moves the app-debug.apk if it hasnt already been moved
rm -r /tmp/$basename/.gradle
rm -r /tmp/$basename/.git
rm -r /tmp/$basename/app/build
rm -r /tmp/$basename/build
rm -r /tmp/$basename/captures
rm -r /tmp/$basename/projectFilesBackup
rm /tmp/$basename/.idea/vcs.xml
rm /tmp/$basename/local.properties
pushd /tmp # Jump into /tmp so the directory tree in the .zip file doesnt include /tmp
zip -r "$rundir/${basename}_Android_${fullname}.zip" $basename/
exit 0
