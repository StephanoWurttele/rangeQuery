if(EXISTS "/home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test[1]_tests.cmake")
  include("/home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test[1]_tests.cmake")
else()
  add_test(quad_test_NOT_BUILT quad_test_NOT_BUILT)
endif()
