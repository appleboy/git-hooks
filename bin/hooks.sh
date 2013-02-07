#!/usr/bin/env bash
#
# Author: Bo-Yi Wu <appleboy.tw AT gmail.com>
#

function displayErr()
{
    echo
    echo $1;
    echo
    exit 1;
}

function usage()
{
    echo 'Usage: '$0' source_folder_path'
    exit 1;
}

test $# -lt 1 && usage $0
source_folder=$1
test ! -d $source_folder && displayErr "${source_folder} is not a folder"
test ! -d ${source_folder}/.git/hooks && displayErr "${source_folder} is not git source project"
cp -r pre-commit ${source_folder}/.git/hooks/

echo "============================================================="
echo "=> copy pre-commit file to ${source_folder}/.git/hooks completely."
echo "============================================================="
