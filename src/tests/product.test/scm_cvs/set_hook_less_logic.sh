#!/bin/sh

. ../lib/common.inc


COMMIT_FILE=CVSROOT/verifymsg
cd $REPOSITORY_CHECKOUT
common_replace_multiline_sed $COMMIT_FILE "/touch.*new_hook.*/d"
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner." $COMMIT_FILE && echo PASSED
