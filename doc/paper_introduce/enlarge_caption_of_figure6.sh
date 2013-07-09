#!/bin/sh

cat $1 | sed -e '/fig:log_message_template/ {
N
s/TABLE/TABLE width="50%" align="center"/
}' > tmp && mv tmp $1
