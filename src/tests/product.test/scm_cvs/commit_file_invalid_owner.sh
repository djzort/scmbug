#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file4.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_INVALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} ${TESTSUITE_COMMON_NOTE}
Testing a commit of $COMMIT_FILE on a bug id with an invalid bug owner." $COMMIT_FILE && exit -1
$SCM_BIN_PATH/cvs remove -f $COMMIT_FILE
echo PASSED
