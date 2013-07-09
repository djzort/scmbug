#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file1_nonnumeric.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_NONNUMERIC}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner, with a bug number containing non-numeric characters." $COMMIT_FILE || ($SCM_BIN_PATH/cvs remove -f $COMMIT_FILE; echo PASSED)
