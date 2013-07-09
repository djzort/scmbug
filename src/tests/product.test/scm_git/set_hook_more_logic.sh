#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT
echo "touch $TEMP_DIR/new_hook" >> .git/hooks/commit-msg && echo PASSED
