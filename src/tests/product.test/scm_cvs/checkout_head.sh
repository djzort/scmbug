#!/bin/sh

. ../lib/common.inc



cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/cvs up -A . && echo PASSED
