#!/bin/sh

. ../lib/common.inc

# Disable the valid_product_name policy.
common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/valid_product_name =>/ {
N
s/enabled => .*/enabled => 0/
}"
echo PASSED
