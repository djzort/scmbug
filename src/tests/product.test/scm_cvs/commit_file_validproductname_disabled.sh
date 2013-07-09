#!/bin/sh

. ../lib/common.inc




COMMIT_FILE=test_file_validproductname_disabled.txt
cd $REPOSITORY_CHECKOUT
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/cvs add $COMMIT_FILE
$SCM_BIN_PATH/cvs commit -m "${LOG_TEMPLATE_ID_PREFIX}${TESTSUITE_BUG_INVALID_BUG_PRODUCT}${LOG_TEMPLATE_ID_POSTFIX} $TESTSUITE_COMMON_NOTE
Testing a commit of $COMMIT_FILE on a bug id with an invalid product name when valid_product_name is disabled." $COMMIT_FILE && echo PASSED
