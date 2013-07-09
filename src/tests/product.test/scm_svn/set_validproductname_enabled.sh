#!/bin/sh

. ../lib/common.inc

# Enable the valid_product_name policy.
common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/valid_product_name =>/ {
N
s/enabled => .*/enabled => 1/
}"
echo PASSED
