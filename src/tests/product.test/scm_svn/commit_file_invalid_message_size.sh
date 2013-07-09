#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=trunk/test_file5.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} Testsuite note" $COMMIT_FILE && exit -1
rm $COMMIT_FILE
$SCM_BIN_PATH/svn remove --force $COMMIT_FILE
echo PASSED
