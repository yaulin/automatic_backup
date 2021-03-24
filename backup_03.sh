#!/bin/bash

date >> ~/shell_scripts/output.txt
echo "backup started" >> ~/shell_scripts/output.txt
timestamp=$(date +%Y-%m-%d-%H:%M)
mkdir "~/Backup/backup_$timestamp"
rsync -a ~/Work/ "~/Backup/backup_$timestamp"
date >> ~/shell_scripts/output.txt
echo "backup successful" >> ~/shell_scripts/output.txt 

