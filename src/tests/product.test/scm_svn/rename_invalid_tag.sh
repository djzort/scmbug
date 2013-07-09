#!/bin/sh

. ../lib/common.inc



OLD_TAG_NAME="invalid_tag_name_rename"
TAG_NAME="p_ats_new_tag"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/svn rename tags/$OLD_TAG_NAME tags/$TAG_NAME
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing renaming tag with name $OLD_TAG_NAME to $TAG_NAME on a
bug id with a valid bug owner." tags && echo PASSED
