#!/usr/bin/env bash
main () {
    for i in {a..z}; do
        [[ "${1,,}" = *$i* ]] || return 1
    done
    return 0
}
main "$@" && echo "true" || echo "false"