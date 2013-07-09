#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT


# Change the value of the product_name_definition policy
common_replace_multiline_sed "CVSROOT/etc/scmbug/glue.conf" "/valid_product_name =>/ {
N
s/enabled => .*/enabled => 1/
}"

# Change the value of the product_name_definition policy
common_replace_multiline_sed "CVSROOT/etc/scmbug/glue.conf" "/product_name_definition =>/ {
N
N
s/value => '.*'/value => 'TestProduct'/
}"

$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Just changed the product_name_definition value to an invalid product name" "CVSROOT/etc/scmbug/glue.conf" || exit -1
echo PASSED
