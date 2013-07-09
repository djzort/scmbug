#!/bin/sh

. ../lib/common.inc



COMMIT_FILE=test_file_none2.txt
cd $REPOSITORY_CHECKOUT/trunk



#
# A commit without a bug id, without a bug id token should go through
#
echo "Adding more content to the test file" >> $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
$SCM_BIN_PATH/svn commit -m "$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE without a bug id, without a bug id token, and the presence_of_bug_ids policy set to none." $COMMIT_FILE && echo PASSED
