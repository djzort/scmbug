#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_ROOT
common_replace_multiline_sed "hooks/pre-commit" "/touch.*new_hook.*/d" && echo PASSED
