#!/bin/sh

. ../lib/common.inc



OLD_TAG_NAME="invalid_tag_name_rename"
TAG_NAME="p_ats_renamed_tag"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/cvs rtag -r $OLD_TAG_NAME $TAG_NAME . && $SCM_BIN_PATH/cvs rtag -d $OLD_TAG_NAME . && echo PASSED
