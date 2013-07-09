#!/bin/sh

. ../lib/common.inc


cd $REPOSITORY_CHECKOUT


# Change the presence_of_bug_ids policy. Set it to optional
common_replace_multiline_sed "CVSROOT/etc/scmbug/glue.conf" "/presence_of_bug_ids =>/ {
N
s/value => '.*'/value => 'required'/
}"

$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Just changed the presence_of_bug_ids policy to required" "CVSROOT/etc/scmbug/glue.conf" || exit -1
echo PASSED
