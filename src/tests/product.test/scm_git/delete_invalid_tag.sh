#!/bin/sh

. ../lib/common.inc



OLD_TAG_NAME="invalid_tag_name_delete"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git tag -d $OLD_TAG_NAME && echo PASSED
