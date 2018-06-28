#! /bin/sh

if [ -z "${REPO}" ] ; then echo "REPO is undefined" && exit ; fi
if [ -z "${SYNC_WAIT}" ] ; then echo "SYNC_WAIT is undefined" && exit ; fi

cd ${REPO}

while true
do
    git pull --rebase
    echo "update"
    echo "wait ${SYNC_WAIT} secondes"
    sleep ${SYNC_WAIT}
done
