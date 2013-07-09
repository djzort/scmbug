#!/bin/sh

# Run this script to regenerate the configure script. Should only be
# run during development and prior to generating the final configure
# script to be distributed with a release

run() {
	echo "Running $1 ..."
	$1
}

ACLOCAL=${ACLOCAL:-aclocal}
AUTOCONF=${AUTOCONF:-autoconf}

run $ACLOCAL
run $AUTOCONF

echo "prepared configure script correctly"

