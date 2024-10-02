#!/bin/bash

arch=$(uname -m)
if [ "$arch" == "x86_64" ]; then
  arch="amd64"
else
  arch="x86"
fi

old_version=$(
  cat ./$arch/DEBIAN/control |
  grep -oP '[0-9]+\.[0-9]+\.[0-9](-[0-9])?'
)

new_version=$(
  curl -s "https://teamspeak.com/en/your-download/#ts3client" |
  awk -F'href=' 'NF>1 && $2~/\.(run)/ {split($2,a,"\"");print a[2]}' |
  tr -d '\n' | sed "s|#||g" | grep -oP '[0-9]+\.[0-9]+\.[0-9](-[0-9])?' |
  head -n 1
)

files=(
  "preinst"
  "control"
)

if [[ "$old_version" < ${new_version} ]]
then
  for f in "${files[@]}"; do
    sed -i "s|$old_version|$new_version|g" ./$arch/DEBIAN/"$f"
  done
  dpkg-deb --build $arch "teamspeak3-client_$arch-$new_version.deb"
  git add -A
  git commit -m "Update TeamSpeak3-Client version from $old_version to $new_version"
  git push -u origin master
  git tag -a "${new_version}" -m "Update TeamSpeak3-Client version from $old_version to $new_version"
  git push --tags origin master
else
  echo "Latest TeamSpeak3 version already installed ($old_version)"
fi