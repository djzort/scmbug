#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=trunk/test_file6.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_INVALID_BUG_PRODUCT}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with an invalid product name." $COMMIT_FILE && exit -1
rm $COMMIT_FILE
$SCM_BIN_PATH/svn remove --force $COMMIT_FILE
echo PASSED
