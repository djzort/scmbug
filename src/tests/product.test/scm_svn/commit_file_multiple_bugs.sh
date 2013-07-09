#!/bin/sh

. ../lib/common.inc


SEPARATOR_TOKEN_NAME=$1

if [ $SEPARATOR_TOKEN_NAME = "comma" ]; then
    SEPARATOR_TOKEN=","
    COMMIT_FILE=trunk/test_file2.txt
elif [ $SEPARATOR_TOKEN_NAME = "whitespace" ]; then
    SEPARATOR_TOKEN=" "
    COMMIT_FILE=trunk/test_file3.txt
elif [ $SEPARATOR_TOKEN_NAME = "whitespace_and_pound" ]; then
    SEPARATOR_TOKEN=" #"
    COMMIT_FILE=trunk/test_file3pound.txt
else
    exit -1
fi



cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${SEPARATOR_TOKEN}${TESTSUITE_BUG_VALID_BUG_OWNER2}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner, against multiple bugs that are ${SEPARATOR_TOKEN_NAME} separated." $COMMIT_FILE && echo PASSED
