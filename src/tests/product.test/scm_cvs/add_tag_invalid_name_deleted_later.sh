#!/bin/sh

. ../lib/common.inc




TAG_NAME="invalid_tag_name_delete"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/cvs tag $TAG_NAME && echo PASSED
