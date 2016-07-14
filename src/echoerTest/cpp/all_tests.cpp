
#include "gtest/gtest.h"
#include <iostream>

using namespace testing;
using namespace std;

int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  cout << "Running Unit Tests" << endl;
  return RUN_ALL_TESTS();
}