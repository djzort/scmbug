#!/bin/sh

. ../lib/common.inc



DIRECTORY_NAME=A/Long/DirectoryPrefix/TestProduct
cd $REPOSITORY_CHECKOUT
mkdir -p $DIRECTORY_NAME
mkdir $DIRECTORY_NAME/trunk
mkdir $DIRECTORY_NAME/tags
mkdir $DIRECTORY_NAME/branches
$SCM_BIN_PATH/svn add A
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of the directories always created by convention in Subversion on a bug id with a valid bug owner." A && echo PASSED
