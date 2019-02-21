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
	pwd
	git checkout master 
	git tag $(cat newcommit.txt)
	git merge $(cat newcommit.txt)
	git push https://BasileoLuv:b2890a71b4ba5434f8995682ee8868cfc27250ca@github.com/BasileoLuv/Test4.git
fi
