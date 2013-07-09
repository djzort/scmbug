#!/bin/sh

. ../lib/common.inc




TAG_NAME="tag_without_a_valid_naming_convention"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/cvs tag $TAG_NAME *.txt && exit -1
echo PASSED
