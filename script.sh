#!/usr/bin/sh
git show --summary | awk '{print $2}' | head -1 >newcommit.txt 
grep version $1 setup.py >curr-snapshot.txt
cut -d= -f2 curr-snapshot.txt >2.txt
cut -d- -f1 2.txt >curr-snapshot.txt
sed 's/^.//' curr-snapshot.txt >2.txt
mv 2.txt curr-snapshot.txt
python version.py >3.txt
test1=$(cat 3.txt)
echo $test1
version=$(cat curr-snapshot.txt)
echo $version
python setup.py sdist bdist_wheel
mv dist/Python-Calculator*.tar.gz dist/Python-Calculator-$version-$test1.tar.gz
mv dist/Python_Calculator* dist/Python-Calculator-$version-$test1-py2-none-any.whl
rm 3.txt 
echo First job is successfully
python2.7 -m twine upload dist/* --repository-url http://nexus:8081/repository/pypi/ -u admin -p admin123 --skip-existing
