#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file_more_than_one_digit.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_MORE_THAN_ONE_DIGIT}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with more than one digit a valid bug owner." $COMMIT_FILE && echo PASSED
