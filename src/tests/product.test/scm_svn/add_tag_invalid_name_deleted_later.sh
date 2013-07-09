#!/bin/sh

. ../lib/common.inc




TAG_NAME="invalid_tag_name_delete"
cd $REPOSITORY_CHECKOUT
mkdir -p tags/$TAG_NAME
$SCM_BIN_PATH/svn add tags
$SCM_BIN_PATH/svn add tags/$TAG_NAME
$SCM_BIN_PATH/svn commit -m "dummy message" tags && echo PASSED
