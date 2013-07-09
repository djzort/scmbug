#!/bin/sh

. ../lib/common.inc



cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/cvs tag -b b_test_branch . || exit -1
$SCM_BIN_PATH/cvs up -r b_test_branch . && echo PASSED
