#!/bin/bash
currsnapshot=$(cat curr-snapshot.txt )
currrelease=$(cat ../curr-release.txt )
echo $currsnapshot
echo $currrelease

if [[  $currsnapshot <  $currrelease ]]
then 
	exit 1
else 
	git merge $(cat newcommit.txt)
	git tag $(cat newcommit.txt)
fi
