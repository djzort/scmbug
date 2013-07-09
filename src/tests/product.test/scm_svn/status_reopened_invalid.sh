#!/bin/sh

. ../lib/common.inc

RESOLUTION_TEMPLATE_PREFIX="${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_STATUS_CHANGE}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Implemented automatic status resolution as a new policy"
RESOLUTION_TEMPLATE="${RESOLUTION_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_STATUS_CHANGE}${RESOLUTION_TEMPLATE_ID_POSTFIX} ${TESTSUITE_RESOLUTION_STATE_REOPENED}"

COMMIT_FILE=commit_file_and_reopen.txt
cd $REPOSITORY_CHECKOUT/trunk
echo "commit_file_and_reopen" > $COMMIT_FILE
$SCM_BIN_PATH/svn add $COMMIT_FILE
$SCM_BIN_PATH/svn commit -m "${RESOLUTION_TEMPLATE_PREFIX}
${RESOLUTION_TEMPLATE}" $COMMIT_FILE && exit -1
echo PASSED
