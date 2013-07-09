#!/bin/sh

. ../lib/common.inc

export CVSROOT=$REPOSITORY_ROOT
mkdir -p $REPOSITORY_ROOT
chmod 777 $REPOSITORY_ROOT

cd $TEMP_DIR
$SCM_BIN_PATH/cvs init && echo PASSED
