#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT

# Change the product_name_definition policy to autodetect the product name.
common_replace_multiline_sed "CVSROOT/etc/scmbug/glue.conf" "/product_name_definition =>/ {
N
N
s/values =>.*' }/values => \{ 'A\/Long\/DirectoryPrefix\/(.*?)\/.+' => '\$1', 'wb\/(.*?)\/.+' => '\$1' \}/
}"

$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Just changed the product_name_definition policy to autodetect the product name" "CVSROOT/etc/scmbug/glue.conf" || exit -1
echo PASSED
