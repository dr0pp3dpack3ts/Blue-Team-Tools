#!/bin/bash

#This one liner script pulls the list of users from the passwd list and prompts for password reset.
#To reset all users listed in the passwd file.
while IFS=: read u x nn rest; do if [ $nn -ge 1000 ]; then echo 'StrongPassw0rd!' | passwd $u; fi done < /etc/passwd
