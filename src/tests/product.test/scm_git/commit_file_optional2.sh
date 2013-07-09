#!/bin/sh

. ../lib/common.inc



COMMIT_FILE=test_file9.txt
cd $REPOSITORY_CHECKOUT


#
# A commit without a bug id, without a bug id token should go through
#
echo "Adding more content to the test file" >> $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "$TEMPLATE_NOTE $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE without a bug id, without a bug id token, and the presence_of_bug_ids policy set to optional." $COMMIT_FILE && echo PASSED
