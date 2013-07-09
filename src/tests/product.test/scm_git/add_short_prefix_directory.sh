#!/bin/sh

. ../lib/common.inc


COMMIT_FILE=wb/TestProduct/test_file_in_short_prefix_directory.txt
cd $REPOSITORY_CHECKOUT
mkdir -p wb/TestProduct
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE of a file in a log prefix directory on a bug id with a valid bug owner." $COMMIT_FILE && echo PASSED
