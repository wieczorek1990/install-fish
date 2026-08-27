#!/bin/sh
# Helix installer.

echo "Opening versions..."
open "https://github.com/fish-shell/fish-shell/releases"

default_version="4.8.1"
read -p "What version would you like to download? ($default_version) " version
if [ -z "$version" ]
then
  version="${default_version}"
fi
echo "Version chosen is: ${version}"

name="fish"
binary="${name}-${version}.zip"
app="${name}-${version}.app"
url="https://github.com/fish-shell/fish-shell/releases/download/${version}/fish-${version}.app.zip"
out="/Applications"
out_app="${out}/${name}.app"

rm -f "${binary}"
curl --location --output "${binary}" "${url}"
unzip "${binary}"
rm -fr "${out_app}"
mv "${app}" "${out_app}"
