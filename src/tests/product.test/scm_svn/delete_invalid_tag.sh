#!/bin/sh

. ../lib/common.inc



OLD_TAG_NAME="invalid_tag_name_delete"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/svn delete tags/$OLD_TAG_NAME
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing deleting tag with name $OLD_TAG_NAME on a
bug id with a valid bug owner." tags && echo PASSED
