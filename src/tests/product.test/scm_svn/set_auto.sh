#!/bin/sh

. ../lib/common.inc

# Change the product_name_definition policy. Set it to auto
common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/product_name_definition =>/ {
N
s/type => '.*'/type => 'auto'/
}"

common_replace_multiline_sed "$REPOSITORY_ROOT/hooks/etc/scmbug/glue.conf" "/product_name_definition =>/ {
N
N
s/value => '.*'/value => 'A\/Long\/DirectoryPrefix\/(.+?)\/,wb\/(.+?)\/'/
}"
echo PASSED
