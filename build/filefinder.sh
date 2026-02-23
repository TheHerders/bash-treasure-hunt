#!/usr/bin/env bash

set -euo pipefail

echo "The secret is in the file with the name in puzzle/names/filename"

mkdir names
touch names/clive
touch names/tuolu
touch names/theo
touch names/steven
touch names/malcolm
touch names/filename

ran=$((RANDOM % 5))
if ((ran == 0)); then
    echo "clive" > names/filename
    echo "$1" > names/clive
elif ((ran == 1)); then
    echo "tuolu" > names/filename
    echo "$1" > names/tuolu
elif ((ran == 2)); then
    echo "theo" > names/filename
    echo "$1" > names/theo
elif ((ran == 3)); then
    echo "steven" > names/filename
    echo "$1" > names/steven
elif ((ran == 4)); then
    echo "malcolm" > names/filename
    echo "$1" > names/malcolm
fi

