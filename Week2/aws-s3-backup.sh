#!/bin/bash


src=$1

dest=$2

timestamp=$(date +%Y-%m-%d_%H:%M:%S)

zip "$dest/backup-$timestamp" $src

aws s3 sync $dest s3://backup-vineet

echo "backup complete"
