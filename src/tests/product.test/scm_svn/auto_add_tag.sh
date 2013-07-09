#!/bin/sh

. ../lib/common.inc




TAG_NAME="p_ats_new_tag"
cd $REPOSITORY_CHECKOUT
TRUNK=A/Long/DirectoryPrefix/TestProduct/trunk
TAGS=A/Long/DirectoryPrefix/TestProduct/tags
$SCM_BIN_PATH/svn copy $TRUNK $TAGS/$TAG_NAME
$SCM_BIN_PATH/svn commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing creation of a new tag with name $TAG_NAME that meets a naming
convention on a bug id with a valid bug owner, when the product name will be autodetected." $TAGS/$TAG_NAME && echo PASSED
