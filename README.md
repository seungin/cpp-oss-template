# cpp-oss-template

C++ Open Source Software Template

### build

```sh
$ mkdir build && cd build
$ cmake ..
$ cmake --build .
$ ls -l lib
-rw-rw-r-- 1 seungin seungin 1498 Aug  1 22:49 libcpp-oss-template.a
```

### format

```sh
$ ls -al .clang-format
-rw-rw-r-- 1 seungin seungin 4523 Aug  2 17:36 .clang-format
$ find . -regex '.*\.\(cpp\|hpp\|cc\|cxx\)' -exec clang-format -style=file -i {} \;
```