#!/bin/sh

. ../lib/common.inc



BRANCH_NAME="b_test_branch"
cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git branch $BRANCH_NAME && echo PASSED
