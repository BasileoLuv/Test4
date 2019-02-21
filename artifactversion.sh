#!/usr/bin/sh
git checkout dev
grep version $1 setup.py >1.txt
cut -d= -f2 1.txt >2.txt
cut -d- -f1 2.txt >1.txt
sed 's/^.//' 1.txt >2.txt
mv 2.txt 1.txt
cat 1.txt
major_version=$(cat 1.txt| cut -d. -f1)
minor_version=$(cat 1.txt | cut -d. -f2)
hotfix_version=$(cat 1.txt | cut -d. -f3)
echo "${major_version}.${minor_version}.$(( ${hotfix_version}+1))"
funk="${major_version}.${minor_version}.$(( ${hotfix_version}+1))"
sed "s/version=.*/version='$funk-SNAPSHOT',/g"  setup.py >2.txt
mv 2.txt setup.py
rm 1.txt
rm -r Python-*
git add .
git commit -m "bump version"
git push https://github.com/BasileoLuv/Test4.git