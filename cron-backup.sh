#!/bin/bash

CRON_DIR=/var/spool/cron/crontabs
BACKUP_DIR=/root

DIRNAME="cron_$(date +"%Y%m%d")"

mkdir -p $BACKUP_DIR/$DIRNAME

for filename in $CRON_DIR/*; do
        cat $filename > $BACKUP_DIR/$DIRNAME/`basename $filename`
done

# 0 0 * * 1 bash backup-cron.sh
