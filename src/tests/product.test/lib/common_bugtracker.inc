TESTSUITE_BUGTRACKER_PRODUCT=TestProduct
TESTSUITE_INTEGRATION_DAEMON=127.0.0.1
TESTSUITE_INTEGRATION_DAEMON_WRONG_IP=www.microsoft.com



# Dynamically determine which tester is testing.  prep.sh should have
# generated a file that contains the name of the tester
TESTER_NAME_FILE=../config/tested_tester_name
if [ ! -e $TESTER_NAME_FILE ]; then
    echo "Tester name file $TESTER_NAME_FILE is missing"
    exit -1
else
    TESTER=`cat $TESTER_NAME_FILE`
fi



# Dynamically determine which bug-tracker is used. prep.sh must have
# created a file that contains the name of the bug-tracker used
BUGTRACKER_NAME_FILE=../config/tested_bugtracker_name
if [ ! -e $BUGTRACKER_NAME_FILE ]; then
    echo "Bugtracker name file $BUGTRACKER_NAME_FILE is missing"
    exit -1
else
    BUGTRACKER=`cat $BUGTRACKER_NAME_FILE`
    . ../config/testers/$TESTER/bugs.$BUGTRACKER.inc
fi
