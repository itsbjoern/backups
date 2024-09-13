#!/bin/sh

lastLogfile="/var/log/backup-last.log"
lastMailLogfile="/var/log/mail-last.log"

copyErrorLog() {
  cp ${lastLogfile} /var/log/backup-error-last.log
}

logLast() {
  echo "$1" >> ${lastLogfile}
}

start=`date +%s`
rm -f ${lastLogfile} ${lastMailLogfile}
echo "Starting Backup at $(date +"%Y-%m-%d %H:%M:%S")"
echo "Starting Backup at $(date)" >> ${lastLogfile}
logLast "BACKUP_CRON: ${BACKUP_CRON}"
logLast ""

/bin/backup_service

backupRC=$?
if [[ $backupRC == 0 ]]; then
    echo "Backup Successful"
    logLast "Backup Successful"
else
    echo "Backup Failed with Status ${backupRC}"
    logLast "Backup Failed"
    copyErrorLog
fi
logLast "Finished backup at $(date)"

end=`date +%s`
echo "Finished Backup at $(date +"%Y-%m-%d %H:%M:%S") after $((end-start)) seconds"

MAIL_ESCAPE_REGEX='[a-zA-Z0-9: -\.{}[]!@_+=;><,?]\n'
if [[ -n "${MAIL_ESCAPE}" ]]; then
  MAIL_ESCAPE_REGEX="${MAIL_ESCAPE}"
fi


tr -cd "$MAIL_ESCAPE_REGEX" < "$lastLogfile" > "/var/log/temp_log.log"

if [ -n "${MAILX_ARGS}" ]; then
    sh -c "mailx -v -S sendwait ${MAILX_ARGS} < "/var/log/temp_log.log" > ${lastMailLogfile} 2>&1"
    if [ $? == 0 ]; then
        echo "Mail notification successfully sent."
    else
        echo "Sending mail notification FAILED. Check ${lastMailLogfile} for further information."
    fi
fi

