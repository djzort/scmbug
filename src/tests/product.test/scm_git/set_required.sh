#!/bin/sh

. ../lib/common.inc

# Change the presence_of_bug_ids policy. Set it to required
common_replace_multiline_sed "$REPOSITORY_CHECKOUT/.git/hooks/etc/scmbug/glue.conf" "/presence_of_bug_ids =>/ {
N
s/value => '.*'/value => 'required'/
}"
echo PASSED
