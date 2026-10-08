#!/bin/bash
# open.sh <bottle-id> — open and read a bottle.
DIR="$(dirname "$0")"
FILE="$DIR/bottles/$1.md"
[ -f "$FILE" ] && cat "$FILE" || echo "no bottle: $1"
