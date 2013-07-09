#!/bin/sh

. ../lib/common.inc



mkdir -p $REPOSITORY_CHECKOUT
cd $REPOSITORY_CHECKOUT
export CVSROOT=$REPOSITORY_ROOT
$SCM_BIN_PATH/cvs co .

if [ -e CVSROOT ]; then
    echo PASSED
else
    echo FAILED
fi
