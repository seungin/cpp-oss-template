# cpp-oss-template

C++ Open Source Software Template

### Adding dependencies with Git submodule

```shell script
$ git submodule add https://github.com/onqtam/doctest Libraries/doctest
```

### Formatting with Clang-format

```shell script
$ ls -al .clang-format
-rw-rw-r-- 1 seungin seungin 4523 Aug  2 17:36 .clang-format
$ find -name '*.cpp' -o -name '*.hpp' | xargs clang-format -i
```

### Building with CMake

```shell script
$ mkdir build && cd build
$ cmake ..
$ cmake --build .
$ ls -l lib
-rw-rw-r-- 1 seungin seungin 1498 Aug  1 22:49 libcpp-oss-template.a
```

### Testing with doctest

```shell script
$ build/bin/UnitTests
[doctest] doctest version is "2.4.0"
[doctest] run with "--help" for options
===============================================================================
[doctest] test cases:      1 |      1 passed |      0 failed |      0 skipped
[doctest] assertions:      4 |      4 passed |      0 failed |
[doctest] Status: SUCCESS!
```