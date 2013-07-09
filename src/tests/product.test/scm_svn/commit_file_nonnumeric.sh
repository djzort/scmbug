#!/bin/sh

. ../lib/common.inc


COMMIT_FILE=test_file1_parenthesis.txt
cd $REPOSITORY_CHECKOUT/trunk
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_NONNUMERIC}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner, with the bug number containing non-numeric characters." $COMMIT_FILE || ($SCM_BIN_PATH/svn remove --force $COMMIT_FILE; echo PASSED)
