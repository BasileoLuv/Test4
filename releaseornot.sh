#!/bin/bash
currsnapshot=$(cat Python-Ca*/curr-snapshot.txt )
currrelease=$(cat curr-release.txt)
echo $currsnapshot
echo $currrelease

if [[  $currsnapshot <  $currrelease ]]
then 
	echo "stop it"
else 
	cd Python-Ca*/
	git checkout master 
	git status
	git merge $(cat newcommit.txt)
	git pull https://github.com/BasileoLuv/test3.git
	git fetch upstream
	git push -f https://github.com/BasileoLuv/test3.git dev
fi
