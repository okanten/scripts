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
rm -rf /tmp/$basename/
cp -R $1 /tmp/$basename/
mv -n /tmp/$basename/app/build/outputs/apk/debug/app-debug.apk /tmp/$basename/app-debug.apk # Flytter apk-filen hvis den ikke eksisterer.
rm -r /tmp/$basename/.gradle
rm -r /tmp/$basename/.git
rm -r /tmp/$basename/app/build
rm -r /tmp/$basename/build
rm -r /tmp/$basename/captures
rm -r /tmp/$basename/projectFilesBackup
rm /tmp/$basename/.idea/vcs.xml
rm /tmp/$basename/local.properties
zip -r "${basename}_Android_${fullname}.zip" /tmp/$basename/
