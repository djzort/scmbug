#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT


# Change the open_bug_state policy. Set it to enabled
common_replace_multiline_sed "CVSROOT/etc/scmbug/glue.conf" "/open_bug_state =>/ {
N
s/enabled => .*/enabled => 1/
}"

$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Just changed the open_bug_state policy to enabled" "CVSROOT/etc/scmbug/glue.conf" || exit -1
echo PASSED
