#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <cpp-oss-template/Test.hpp>

#include "doctest.h"

TEST_CASE("Simple test") {
  CHECK_EQ(Add(2, 3), 5);
  CHECK_EQ(Add(2, -3), -1);
  CHECK_EQ(Add(-2, 3), 1);
  CHECK_EQ(Add(-2, -3), -5);
}