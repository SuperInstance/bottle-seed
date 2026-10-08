#!/bin/bash
# find.sh — list all bottles on the beach.
DIR="$(dirname "$0")"
ls "$DIR/bottles"/*.md 2>/dev/null | sort | while read f; do basename "$f" .md; done
