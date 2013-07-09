#!/bin/sh

. ../lib/common.inc



DIRECTORY_NAME_TRUNK=Afterwb/trunk/TestProduct
DIRECTORY_NAME_TAGS=Afterwb/tags/TestProduct
DIRECTORY_NAME_BRANCHES=Afterwb/branches/TestProduct
cd $REPOSITORY_CHECKOUT
mkdir -p $DIRECTORY_NAME_TRUNK
mkdir -p $DIRECTORY_NAME_TAGS
mkdir -p $DIRECTORY_NAME_BRANCHES
$SCM_BIN_PATH/svn add Afterwb
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of the directories always created by convention in Subversion on a bug id with a valid bug owner, after trunk/tags/branches." Afterwb && echo PASSED
