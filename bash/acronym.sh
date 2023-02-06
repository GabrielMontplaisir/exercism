#!/usr/bin/env bash
STR="${1^^}"
STR="${STR//-/ }"
STR="${STR//[^a-zA-Z\ ]/}"
acronym=""
for word in $STR; do
    acronym+=${word:0:1}
done
echo "${acronym}"