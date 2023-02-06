#!/usr/bin/env bash
while read -r -n1 char; do
   ((squaresum+=char**${#1}))
done <<< "$1"
(( $1 == squaresum ))  && echo "true" || echo "false"