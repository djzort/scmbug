#!/bin/sh

. ../lib/common.inc




TAG_NAME="p_ats_new_tag_using_invalid_product"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git tag $TAG_NAME && echo PASSED
