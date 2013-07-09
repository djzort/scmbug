#!/bin/sh

. ../lib/common.inc



OLD_TAG_NAME="invalid_tag_name_rename"
TAG_NAME="p_ats_new_tag"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git tag $TAG_NAME $OLD_TAG_NAME && $SCM_BIN_PATH/git tag -d $OLD_TAG_NAME && echo PASSED
