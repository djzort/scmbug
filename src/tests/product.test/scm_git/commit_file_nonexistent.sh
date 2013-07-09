#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file1_nonexistent.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_NONEXISTENT}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a nonexistent bug id." $COMMIT_FILE || ($SCM_BIN_PATH/git rm -f $COMMIT_FILE && $SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Deleting the no longer needed file that was used when testing a commit of $COMMIT_FILE on a nonexistent bug id."; echo PASSED)
