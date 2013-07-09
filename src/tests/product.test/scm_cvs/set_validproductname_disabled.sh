#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT


# Disable the valid_product_name policy.
common_replace_multiline_sed "CVSROOT/etc/scmbug/glue.conf" "/valid_product_name =>/ {
N
s/enabled => .*/enabled => 0/
}"

$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Just disabled the valid_product_name policy." "CVSROOT/etc/scmbug/glue.conf" || exit -1
echo PASSED
