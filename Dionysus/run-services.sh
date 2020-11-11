#!/bin/bash

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/* /tmp/httpd*

# Run http
exec /usr/sbin/apachectl -D

# Run sshd
exec /usr/sbin/sshd -D

# Run smbd
exec /usr/sbin/smbd -D
