#!/bin/sh

. ../lib/common.inc



COMMIT_FILE=test_file_in_branch.txt
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git checkout $BRANCH_NAME
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner in branch b_test_branch." $COMMIT_FILE && $SCM_BIN_PATH/git checkout master && echo PASSED
