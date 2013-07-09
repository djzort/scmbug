#!/bin/sh

. ../lib/common.inc


cd $TEMP_DIR
$SCM_BIN_PATH/svn co file://$REPOSITORY_ROOT `basename $REPOSITORY_CHECKOUT`
cd `basename $REPOSITORY_CHECKOUT`


if [ -e ".svn" ]; then
    echo PASSED
else
    echo FAILED
fi
