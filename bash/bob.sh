#!/usr/bin/env bash
if [[ $1 == *[[:upper:]]* && $1 != *[[:lower:]]* && $1 =~ \?\ *$ ]]; then
    answer="Calm down, I know what I'm doing!"
elif [[ $1 =~ ^[[:space:]]*$ ]]; then
    answer="Fine. Be that way!"
elif [[ $1 =~ \?\ *$ ]]; then
    answer="Sure."
elif [[ $1 == *[[:upper:]]* && $1 != *[[:lower:]]* ]]; then
    answer="Whoa, chill out!"
else
    answer="Whatever."
fi
echo "$answer"