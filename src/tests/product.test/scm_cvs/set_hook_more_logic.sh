#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=CVSROOT/verifymsg
cd $REPOSITORY_CHECKOUT
echo "DEFAULT		touch $TEMP_DIR/new_hook" >> $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner." $COMMIT_FILE && echo PASSED
