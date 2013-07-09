#!/bin/sh

. ../lib/common.inc



cd $REPOSITORY_CHECKOUT
mkdir test_directory
$SCM_BIN_PATH/cvs add test_directory && echo PASSED
