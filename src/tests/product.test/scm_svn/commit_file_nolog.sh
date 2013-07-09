#!/bin/sh

. ../lib/common.inc


COMMIT_FILE=test_file_nolog.txt
cd $REPOSITORY_CHECKOUT/trunk
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
# No bug id in the commit message
$SCM_BIN_PATH/svn commit -m "" $COMMIT_FILE || ($SCM_BIN_PATH/svn remove --force $COMMIT_FILE; echo PASSED)
