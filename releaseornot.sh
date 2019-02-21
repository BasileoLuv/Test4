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
fi
