#!/bin/sh

set -e

export URL_BASE=https://dl.antmicro.com/projects/renode/builds
export PKG=renode-latest.linux-portable.tar.gz
export RENODE_DIRNAME=renode

echo "Fetching latest Renode package..."
curl --no-progress-meter -L -o "$PKG" "$URL_BASE/$PKG"

echo "Extracting..."
mkdir "$RENODE_DIRNAME"
tar xf "$PKG" -C "$RENODE_DIRNAME" --strip-components 1

echo "Cleanup..."
rm "$PKG"
