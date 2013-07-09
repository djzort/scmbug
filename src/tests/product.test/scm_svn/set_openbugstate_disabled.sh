#!/bin/sh

. ../lib/common.inc

# Change the open_bug_state policy. Set it to disabled
common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/open_bug_state =>/ {
N
s/enabled => .*/enabled => 0/
}"
echo PASSED
