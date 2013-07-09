#!/bin/sh

. ../lib/common.inc




cd $REPOSITORY_CHECKOUT
mkdir trunk
mkdir tags
mkdir branches
$SCM_BIN_PATH/svn add trunk
$SCM_BIN_PATH/svn add tags
$SCM_BIN_PATH/svn add branches
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of the directories always created by convention in Subversion on a bug id with a valid bug owner." trunk tags branches && echo PASSED
