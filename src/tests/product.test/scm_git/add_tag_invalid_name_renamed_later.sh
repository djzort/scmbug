#!/bin/sh

. ../lib/common.inc




TAG_NAME="invalid_tag_name_rename"
cd $REPOSITORY_CHECKOUT

# Git requires at least one revision has been created before it can
# apply a tag.
COMMIT_FILE=test_file_for_invalid_tag_creation.txt
echo "This is a test file" > $COMMIT_FILE
$SCM_BIN_PATH/git add $COMMIT_FILE
$SCM_BIN_PATH/git commit -m "dummy message" $COMMIT_FILE

# Now we can create the tag
$SCM_BIN_PATH/git tag $TAG_NAME && echo PASSED
