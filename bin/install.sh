#!/bin/sh
# Helix installer.

name="fish"
version="4.8.1"
binary="${name}-${version}.zip"
app="${name}-${version}.app"
url="https://github.com/fish-shell/fish-shell/releases/download/${version}/fish-${version}.app.zip"
out="/Applications"

rm "${binary}"
curl --location --output "${binary}" "${url}"
unzip "${binary}"
sudo mv "${app}" "${out}/${name}.app"
