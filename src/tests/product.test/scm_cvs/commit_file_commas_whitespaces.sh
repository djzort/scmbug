#!/bin/sh

. ../lib/common.inc




COMMIT_FILE="a file with spaces,NONEs, commas, digits,1.1,2.numbers close to dots.1.2,NONe.txt"
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add "$COMMIT_FILE"
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_VALID_BUG_OWNER}${LOG_TEMPLATE_ID_POSTFIX}$TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with a valid bug owner on a file with commas and whitespaces." "$COMMIT_FILE" && echo PASSED
