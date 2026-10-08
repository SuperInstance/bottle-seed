#!/bin/bash
# toss.sh — commit and push all bottles. Toss them out to sea.
DIR="$(dirname "$0")"
cd "$DIR" || exit 1
git add bottles/ 2>/dev/null
git -c user.name=bottle -c user.email=bottle@seed commit -qm "toss: $(date -u +%FT%TZ)" 2>/dev/null
git push 2>/dev/null && echo "tossed" || echo "tossed (local only — no remote)"
