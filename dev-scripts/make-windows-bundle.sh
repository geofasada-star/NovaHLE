#!/bin/sh
set -e

# Bundles the NovaHLE executable with the basic set of files needed for
# NovaHLE to run (the same ones found in the macOS .app bundle or Android APK).
# This does not prepare a full release.

if [[ $# == 1 ]]; then
    PATH_TO_BINARY="$1"
    shift

    rm -rf NovaHLE_windows_bundle
    mkdir NovaHLE_windows_bundle
    cp $PATH_TO_BINARY NovaHLE_windows_bundle/
    cp -r ../touchHLE_dylibs NovaHLE_windows_bundle/
    cp -r ../touchHLE_fonts NovaHLE_windows_bundle/
    cp -r ../touchHLE_default_options.txt NovaHLE_windows_bundle/
else
    echo "Incorrect usage."
    exit 1
fi
