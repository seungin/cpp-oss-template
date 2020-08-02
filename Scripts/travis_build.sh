#!/usr/bin/env bash

# this command causes the shell to exit when an unguarded statement evaluates to a false value.
# ; https://jmmv.dev/2018/03/shell-readability-strict-mode.html#set-e
set -e

export NUM_JOBS=1

mkdir build
cd build
cmake ..
cmake --build .

bin/UnitTests