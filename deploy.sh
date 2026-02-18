#!/bin/bash
LOCAL_REPO=~/Documents/dominio-roma3-seminars/
REMOTE_USER=fresta
REMOTE_HOST=www.mat.uniroma3.it
REMOTE_PATH=/www/public/users/pmp-seminars/

rsync -avz --delete $LOCAL_REPO $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

ssh $REMOTE_USER@$REMOTE_HOST "chmod 644 $REMOTE_PATH*; chmod 755 $REMOTE_PATHimages"

ssh "$REMOTE_USER@$REMOTE_HOST" << 'ENDSSH'
cd /www/public/users/pmp-seminars

# Make all files readable
find /www/public/users/pmp-seminars -type f -exec chmod 644 {} \;

# Make all directories accessible
find /www/public/users/pmp-seminars -type d -exec chmod 755 {} \;
ENDSSH

echo "Deploy completed. All files and images are now readable."