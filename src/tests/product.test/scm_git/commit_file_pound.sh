#!/bin/sh

. ../lib/common.inc


COMMIT_FILE=test_file_pound.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}#${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner, with the bug number prefixed with a #." $COMMIT_FILE && echo PASSED
