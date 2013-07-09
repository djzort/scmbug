#!/bin/sh

. ../lib/common.inc




TAG_NAME="p_ats_new_tag"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/cvs tag -d $TAG_NAME *.txt && echo PASSED
