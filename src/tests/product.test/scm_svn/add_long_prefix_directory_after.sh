#!/bin/sh

. ../lib/common.inc



DIRECTORY_NAME_TRUNK=AfterA/Long/DirectoryPrefix/trunk/TestProduct
DIRECTORY_NAME_TAGS=AfterA/Long/DirectoryPrefix/tags/TestProduct
DIRECTORY_NAME_BRANCHES=AfterA/Long/DirectoryPrefix/branches/TestProduct
cd $REPOSITORY_CHECKOUT
mkdir -p $DIRECTORY_NAME_TRUNK
mkdir -p $DIRECTORY_NAME_TAGS
mkdir -p $DIRECTORY_NAME_BRANCHES
$SCM_BIN_PATH/svn add AfterA
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of the directories always created by convention in Subversion on a bug id with a valid bug owner, after trunk/tags/branches." AfterA && echo PASSED
