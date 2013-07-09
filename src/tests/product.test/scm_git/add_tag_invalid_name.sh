#!/bin/sh

. ../lib/common.inc




TAG_NAME="tag_without_a_valid_naming_convention"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git tag $TAG_NAME || echo PASSED
