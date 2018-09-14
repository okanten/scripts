#! /bin/bash
wowDir="${HOME}/.games/world-of-warcraft/drive_c/Program Files (x86)/World of Warcraft/Interface/AddOns/"

display_usage() {
	echo "You need to specify a file"
	echo -e "\nUsage: ./${0##*/} /path/to/file \n"
}

if [  $# -le 0 ]
then
	display_usage
	exit 1
fi


ls "$wowDir"
basename=$(basename $1)
echo $basename
mv $1 "$wowDir"
pushd "$wowDir"
7z x $basename
rm $basename
popd
exit 0
