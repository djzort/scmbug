#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT


# Change the open_bug_state policy. Set it to enabled
common_replace_multiline_sed ".git/hooks/etc/scmbug/glue.conf" "/open_bug_state =>/ {
N
s/enabled => .*/enabled => 1/
}"
echo PASSED
