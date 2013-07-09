#!/bin/sh

. ../lib/common.inc



cd $REPOSITORY_CHECKOUT
mkdir -p A/Long/DirectoryPrefix/TestProduct
$SCM_BIN_PATH/cvs add A && \
$SCM_BIN_PATH/cvs add A/Long && \
$SCM_BIN_PATH/cvs add A/Long/DirectoryPrefix/ && \
$SCM_BIN_PATH/cvs add A/Long/DirectoryPrefix/TestProduct && \
echo PASSED
