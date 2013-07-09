#!/bin/sh


#
# This script is used to make official releases of this system
#

usage()
{
    echo "Usage: $0 <from_release_name> <to_release_name>"
    echo "e.g. $0 SCMBUG_RELEASE_0-8-5 SCMBUG_RELEASE_0-8-7"
    exit -1
}

if [ $# -ne 2 ]; then
    usage
fi

FROM_REL=$1
TO_REL=$2

make distclean
./regen.sh || exit -2
./configure || exit -3
./release_main.sh $FROM_REL $TO_REL
