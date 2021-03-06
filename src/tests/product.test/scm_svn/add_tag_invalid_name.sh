#!/bin/sh

. ../lib/common.inc




TAG_NAME="tag_without_a_valid_naming_convention"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/svn copy trunk tags/$TAG_NAME
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing creation of a new tag with name $TAG_NAME that does not meet a naming
convention  on a bug id with a valid bug owner." tags/$TAG_NAME && exit -1
$SCM_BIN_PATH/svn remove --force tags/$TAG_NAME
echo PASSED
