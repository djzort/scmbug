# Open bug used to install the glue
TESTSUITE_BUG_GLUE_INSTALL=1

# Open bug with a valid bug owner. This bug owner is listed in
# daemon.conf.bugzilla
TESTSUITE_BUG_VALID_BUG_OWNER=1

# Another open bug with a valid bug owner
TESTSUITE_BUG_VALID_BUG_OWNER2=2

# An open bug with a valid bug owner and more than one digit in the
# bug id. One of the digits should map to a bug id that is resolved
# (cannot commit against it)
TESTSUITE_BUG_MORE_THAN_ONE_DIGIT=13

# Bug number of an invalid product
TESTSUITE_BUG_INVALID_BUG_PRODUCT=3

# Bug number of an invalid owner
TESTSUITE_BUG_INVALID_BUG_OWNER=4

# Bug number of a closed bug
TESTSUITE_BUG_CLOSED_BUG=14

# Bug number of a non-numeric bug. It should be the same as the number
# of an open bug with a valid bug owner, but simply containing a
# non-numeric character.
TESTSUITE_BUG_NONNUMERIC="1A"

# Open bug with a valid bug owner filed against a product name that
# contains a '/'
TESTSUITE_BUG_VALID_BUG_PRODUCT_SLASH=17

# Bug with a nonexistent bug number
TESTSUITE_BUG_NONEXISTENT=0

# Bug that will have its status changed
TESTSUITE_BUG_STATUS_CHANGE=18

# Bug that is a duplicate of the bug that will have its status changed
TESTSUITE_BUG_STATUS_CHANGE_DUPLICATE=19

# Username of user that will be the new assignee of a bug that will
# have its status changed
TESTSUITE_BUG_STATUS_CHANGE_ASSIGNEE="mkgnu@mkgnu.net"

# The name of the resolution state the bugtracker uses when it
# resolves bugs
TESTSUITE_RESOLUTION_STATE_RESOLVED="RESOLVED"

# The name of the resolution state the bugtracker uses when it
# reopens bugs
TESTSUITE_RESOLUTION_STATE_REOPENED="REOPENED"

# The name of the resolution state the bugtracker uses when it
# assigns bugs
TESTSUITE_RESOLUTION_STATE_ASSIGNED="ASSIGNED"

# The name of the resolution the bugtracker uses when it resolves a
# bug as fixed
TESTSUITE_RESOLUTION_RESOLVED_FIXED="FIXED"

# The name of the resolution the bugtracker uses when it resolves a
# bug as unreproducable
TESTSUITE_RESOLUTION_RESOLVED_UNREPRODUCABLE="WORKSFORME"

# The name of the resolution the bugtracker uses when it resolves a
# bug as a duplicate
TESTSUITE_RESOLUTION_RESOLVED_DUPLICATE="DUPLICATE"
