#!/bin/bash

# Called by status bar: print an envelope icon with the number of unread mails

status=`cat $HOME/.mutt/new_mail`

echo $status;
