#!/bin/bash


<<INFO
This shell script will take perodic backup
INFO

src=$1
dest=$2

timestamp=$(date +'Y-%Y,M-%m,D-%d,H-%H,M-%M,S-%S')

zip "$dest/backup-$timestamp.zip" $src

aws s3 sync "$dest" s3://tws-backups-z


echo "Backup Completed and uploaded to s3 bucket"



