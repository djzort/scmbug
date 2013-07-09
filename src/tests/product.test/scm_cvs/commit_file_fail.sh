#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file_fail.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
# No bug id in the commit message
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX} ${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE without a bug id." $COMMIT_FILE || ($SCM_BIN_PATH/cvs remove -f $COMMIT_FILE; echo PASSED)
$SCM_BIN_PATH/cvs up
