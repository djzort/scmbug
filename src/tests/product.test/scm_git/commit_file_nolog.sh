#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file_nolog.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
# No bug id in the commit message
$SCM_BIN_PATH/git commit -m "" $COMMIT_FILE || ($SCM_BIN_PATH/git rm -f $COMMIT_FILE && $SCM_BIN_PATH/git commit -m "Deleting the no longer needed file that was used when testing a commit of $COMMIT_FILE with no log message." $COMMIT_FILE; echo PASSED)
