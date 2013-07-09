#!/bin/sh

. ../lib/common.inc

RESOLUTION_TEMPLATE_PREFIX="${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_STATUS_CHANGE}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Implemented automatic status resolution as a new policy"
RESOLUTION_TEMPLATE="${RESOLUTION_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_STATUS_CHANGE}${RESOLUTION_TEMPLATE_ID_POSTFIX} ${TESTSUITE_RESOLUTION_STATE_RESOLVED} ${TESTSUITE_RESOLUTION_RESOLVED_FIXED}"

COMMIT_FILE=commit_file_and_resolve_fixed.txt
cd $REPOSITORY_CHECKOUT
echo "commit_file_and_resolve_fixed" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${RESOLUTION_TEMPLATE_PREFIX}
${RESOLUTION_TEMPLATE}" $COMMIT_FILE && echo PASSED
