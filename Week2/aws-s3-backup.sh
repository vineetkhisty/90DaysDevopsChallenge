#!/bin/bash


src=$1 #Path of the source dir

dest=$2 # Path of the Destination Dir

timestamp=$(date +%Y-%m-%d_%H:%M:%S) # Get the current date in YYY-MM-DD_H:M:S format

zip "$dest/backup-$timestamp" $src # Creating a zip of the src dir into the dest dir

aws s3 sync $dest s3://backup-vineet # Push the zipped file on the S3 bucket

echo "backup complete"
