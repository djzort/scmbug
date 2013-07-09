#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_ROOT
echo "touch $TEMP_DIR/new_hook" >> hooks/pre-commit && echo PASSED
