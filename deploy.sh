#!/bin/bash
LOCAL_REPO=~/Documents/dominio-roma3-seminars/
REMOTE_USER=fresta
REMOTE_HOST=www.mat.uniroma3.it
REMOTE_PATH=/www/public/users/pmp-seminars/

rsync -avz --delete $LOCAL_REPO $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

ssh $REMOTE_USER@$REMOTE_HOST "chmod 644 $REMOTE_PATH*; chmod 755 $REMOTE_PATHimages"