#!/bin/sh

. ../lib/common.inc


# Change the value of the product_name_definition policy
common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/valid_product_name =>/ {
N
s/enabled => .*/enabled => 0/
}"

# Change the value of the product_name_definition policy
common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/product_name_definition =>/ {
N
N
s/value => '.*'/value => '__InvalidProductName__'/
}"

echo PASSED
