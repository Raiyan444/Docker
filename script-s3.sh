#/bin/bash

DATE=$(date +%H-%M-%S)

DB_HOST=$1
DB_PASS=$2
DB_NAME=$3
Secret_key=$4
Bucket_Name=$5

BACKUP=$DB_NAME-$DATE.sql

mysqldump -u root -h $DB_HOST -p$DB_PASS $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIAQVAE6TZXARQYSEHR && \
export AWS_SECRET_ACCESS_KEY=$Secret_key && \
echo "Uploading your $BACKUP backup" && \
aws s3 cp /tmp/$BACKUP s3://$Bucket_Name/$BACKUP
