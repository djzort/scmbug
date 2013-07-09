#!/bin/sh

. test_scm_common.inc

VERSIONS="1_0_x 1_1_x 1_2_x 1_3_x 1_4_x 1_5_x 1_6_x"

test_scm "$VERSIONS" svn SVN
