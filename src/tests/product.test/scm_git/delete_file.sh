#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT
COMMIT_FILE=test_file_that_will_be_deleted.txt
COMMIT_FILE_DUMMY=test_delete_file_dummy.txt
echo "This is a test file" > $COMMIT_FILE
echo "This is a test file" > $COMMIT_FILE_DUMMY

# Add the file
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE that will soon be deleted on a bug id with a valid bug owner." $COMMIT_FILE || exit -1

# Update the file
echo "this is an update" >> $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit on an updated version of $COMMIT_FILE that will soon be deleted on a bug id with a valid bug owner." $COMMIT_FILE || exit -1

# Add another dummy file, just so we commit another changeset before
# the next delete
$SCM_BIN_PATH/git add $COMMIT_FILE_DUMMY
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE_DUMMY that is a dummy file before the next deletion on a bug id with a valid bug owner." $COMMIT_FILE_DUMMY || exit -1

# Delete the file
$SCM_BIN_PATH/git rm -f $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing deletion of $COMMIT_FILE on a bug id with a valid bug owner." && echo PASSED
