#!/bin/sh

. test_scm_common.inc

VERSIONS="1_11_x 1_12_x"

test_scm "$VERSIONS" cvs CVS
