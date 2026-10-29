#!/bin/sh
# Installer for fish shell.
set -eu

rm -rf fish-shell/
git clone --depth=1 git@github.com:fish-shell/fish-shell.git
cd fish-shell/

cmake -B build -DCMAKE_INSTALL_PREFIX="$HOME/.local"
cmake --build build
cmake --install build
