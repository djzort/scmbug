#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT
common_replace_multiline_sed ".git/hooks/commit-msg" "/touch.*new_hook.*/d" && echo PASSED
