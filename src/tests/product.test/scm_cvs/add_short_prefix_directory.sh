#!/bin/sh

. ../lib/common.inc



cd $REPOSITORY_CHECKOUT
mkdir -p wb/TestProduct
$SCM_BIN_PATH/cvs add wb && \
$SCM_BIN_PATH/cvs add wb/TestProduct && \
echo PASSED
