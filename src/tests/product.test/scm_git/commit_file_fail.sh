#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file_fail.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
# No bug id in the commit message
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX} ${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE without a bug id." $COMMIT_FILE || ($SCM_BIN_PATH/git rm -f $COMMIT_FILE && $SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX} ${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Delete the no longer needed file that was used when testing a commit of $COMMIT_FILE without a bug id." $COMMIT_FILE; echo PASSED)
