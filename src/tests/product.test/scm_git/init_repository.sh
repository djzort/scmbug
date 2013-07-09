#!/bin/sh

. ../lib/common.inc

mkdir -p $REPOSITORY_CHECKOUT
chmod 777 $REPOSITORY_CHECKOUT

cd $REPOSITORY_CHECKOUT
$SCM_BIN_PATH/git init && echo PASSED
