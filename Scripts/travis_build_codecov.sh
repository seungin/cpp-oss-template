#!/usr/bin/env bash

# this command causes the shell to exit when an unguarded statement evaluates to a false value.
# ; https://jmmv.dev/2018/03/shell-readability-strict-mode.html#set-e
set -e

export NUM_JOBS=1

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
cmake --build . --target UnitTests

lcov -i -c -d Tests/UnitTests -o base.info
bin/UnitTests
lcov -c -d Tests/UnitTests -o test.info
lcov -a base.info -a test.info -o coverage.info
lcov -r coverage.info '/usr/*' -o coverage.info
lcov -r coverage.info '*/Includes/*' -o coverage.info
lcov -r coverage.info '*/Libraries/*' -o coverage.info
lcov -l coverage.info

genhtml coverage.info -o out

# upload reports
bash <(curl -s https://codecov.io/bash)