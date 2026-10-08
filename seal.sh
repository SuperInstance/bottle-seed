#!/bin/bash
# seal.sh <from> <message> — write a bottle.
DIR="$(dirname "$0")"
mkdir -p "$DIR/bottles"
ID="$(date +%Y%m%d-%H%M%S)-$1"
FILE="$DIR/bottles/$ID.md"
{ echo "# Bottle from $1 — $(date -u +%FT%TZ)"; echo; echo "$2"; } > "$FILE"
echo "sealed: bottles/$ID.md"
