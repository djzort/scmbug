#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file5.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} Testsuite note" $COMMIT_FILE && exit -1
$SCM_BIN_PATH/cvs remove -f $COMMIT_FILE
echo PASSED
