#!/usr/bin/env bash
if [[ $# -ne 2 ]]; then
    echo "Usage: ${0##*/} <string1> <string2>"
    exit 1
fi
if [[ ${#1} -ne ${#2} ]]; then
    echo "Both strands must be of equal length."
    exit 1
fi
declare -i count
for (( i = 0; i < $#1; i++ )); do
    [[ "${1:i:1}" = "${2:i:1}" ]] || count+=1
done
printf '%i\n' "$count"