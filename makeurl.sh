# http://nexus:8081/repository/pypi/packages/python-calculator/0.4.4-SNAPSHOT/Python-Calculator-0.4.4-20190219.121827.tar.gz

snapshot_version=$1
release_version=$(echo $snapshot_version | cut -d- -f1)
echo $release_version
echo "http://localhost:8089/repository/pypi/packages/python-calculator/${release_version}-SNAPSHOT/Python-Calculator-${snapshot_version}.tar.gz"
wget http://localhost:8089/repository/pypi/packages/python-calculator/${release_version}-SNAPSHOT/Python-Calculator-${snapshot_version}.tar.gz
tar xvzf Python-Calculator-${snapshot_version}.tar.gz
rm Python-Calculator-${snapshot_version}.tar.gz
#sh releaseornot.sh
