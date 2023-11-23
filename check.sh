#!/usr/bin/env bash

set -e -u -o pipefail

dart run build_runner build
dart format .
dart fix --apply
