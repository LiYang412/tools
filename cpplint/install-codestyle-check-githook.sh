#!/bin/bash

HOOKPATH=$(find $PWD -wholename "*.git/hooks" -type d)
echo ${HOOKPATH}

if [ -z ${HOOKPATH} ]; then
    echo "please run in dir with .git"
    exit 1
fi

cd ./.git/hooks;
    #ln -s ../../cpplint/cpplint_pre_commit_hook.sh pre-commit
