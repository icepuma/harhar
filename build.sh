#!/usr/bin/env bash

set -e -u -o pipefail

mkdir -p build

dart compile exe bin/harhar.dart -o build/harhar
