add_test( QuadTreeTest.emptyPointList /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=QuadTreeTest.emptyPointList]==] --gtest_also_run_disabled_tests)
set_tests_properties( QuadTreeTest.emptyPointList PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( QuadTreeTest.insertOneElement /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=QuadTreeTest.insertOneElement]==] --gtest_also_run_disabled_tests)
set_tests_properties( QuadTreeTest.insertOneElement PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( QuadTreeTest.insertSeveralElement /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=QuadTreeTest.insertSeveralElement]==] --gtest_also_run_disabled_tests)
set_tests_properties( QuadTreeTest.insertSeveralElement PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( QuadTreeTest.simpleRangeTest /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=QuadTreeTest.simpleRangeTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( QuadTreeTest.simpleRangeTest PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( GetMaxThreads/QuadTreeParamTest.randomRangeTest/10 /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=GetMaxThreads/QuadTreeParamTest.randomRangeTest/0]==] --gtest_also_run_disabled_tests)
set_tests_properties( GetMaxThreads/QuadTreeParamTest.randomRangeTest/10 PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( GetMaxThreads/QuadTreeParamTest.randomRangeTest/100 /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=GetMaxThreads/QuadTreeParamTest.randomRangeTest/1]==] --gtest_also_run_disabled_tests)
set_tests_properties( GetMaxThreads/QuadTreeParamTest.randomRangeTest/100 PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( GetMaxThreads/QuadTreeParamTest.randomRangeTest/1000 /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=GetMaxThreads/QuadTreeParamTest.randomRangeTest/2]==] --gtest_also_run_disabled_tests)
set_tests_properties( GetMaxThreads/QuadTreeParamTest.randomRangeTest/1000 PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( GetMaxThreads/QuadTreeParamTest.randomRangeTest/10000 /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build/quad_test [==[--gtest_filter=GetMaxThreads/QuadTreeParamTest.randomRangeTest/3]==] --gtest_also_run_disabled_tests)
set_tests_properties( GetMaxThreads/QuadTreeParamTest.randomRangeTest/10000 PROPERTIES WORKING_DIRECTORY /home/stephanow/Documents/UTEC/eda/range-search/spatial-datastructures/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( quad_test_TESTS QuadTreeTest.emptyPointList QuadTreeTest.insertOneElement QuadTreeTest.insertSeveralElement QuadTreeTest.simpleRangeTest GetMaxThreads/QuadTreeParamTest.randomRangeTest/10 GetMaxThreads/QuadTreeParamTest.randomRangeTest/100 GetMaxThreads/QuadTreeParamTest.randomRangeTest/1000 GetMaxThreads/QuadTreeParamTest.randomRangeTest/10000)
