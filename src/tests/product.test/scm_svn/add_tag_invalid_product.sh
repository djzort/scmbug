#!/bin/sh

. ../lib/common.inc




TAG_NAME="p_ats_new_tag_using_invalid_product"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/svn copy trunk tags/$TAG_NAME
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing adding a tag using an invalid product name on a
bug id with a valid bug owner." tags/$TAG_NAME && echo PASSED
