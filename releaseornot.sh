#!/bin/bash
currsnapshot=$(cat curr-snapshot.txt )
currrelease=$(cat ../curr-release.txt )
echo $currsnapshot
echo $currrelease

if [[  $currsnapshot <  $currrelease ]]
then 
	echo "stop it"
else 
	git checkout master 
	git tag $(cat newcommit.txt)
	git merge $(cat newcommit.txt)
fi
