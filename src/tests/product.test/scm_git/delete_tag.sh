#!/bin/sh

. ../lib/common.inc




TAG_NAME="p_ats_new_tag"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git tag -d $TAG_NAME && echo PASSED
