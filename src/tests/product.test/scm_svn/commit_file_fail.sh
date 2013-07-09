#!/bin/sh

. ../lib/common.inc


COMMIT_FILE=test_file_fail.txt
cd $REPOSITORY_CHECKOUT/trunk
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
# No bug id in the commit message
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX} ${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner." $COMMIT_FILE || ($SCM_BIN_PATH/svn remove --force $COMMIT_FILE; echo PASSED)
