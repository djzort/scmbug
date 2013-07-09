#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file_nolog.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
# No bug id in the commit message
$SCM_BIN_PATH/cvs commit -m "" $COMMIT_FILE || ($SCM_BIN_PATH/cvs remove -f $COMMIT_FILE; echo PASSED)
