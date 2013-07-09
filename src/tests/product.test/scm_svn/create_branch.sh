#!/bin/sh

. ../lib/common.inc



BRANCH_NAME="b_test_branch"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/svn copy trunk branches/$BRANCH_NAME
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing creation of a new branch with name $BRANCH_NAME that meets a naming
convention on a bug id with a valid bug owner." branches/$BRANCH_NAME && echo PASSED
