#!/bin/sh

. ../lib/common.inc



COMMIT_FILE=test_file_none.txt
cd $REPOSITORY_CHECKOUT



#
# Both commits (with and without a bug id) should go through
#
echo "This is a test file" >> $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX}
$TEMPLATE_NOTE $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner and the presence_of_bug_ids policy set to none." $COMMIT_FILE || exit -1

echo "Adding more content to the test file" >> $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${LOG_TEMPLATE_ID_POSTFIX}
$TEMPLATE_NOTE $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE without a bug id and the presence_of_bug_ids policy set to none." $COMMIT_FILE && echo PASSED
