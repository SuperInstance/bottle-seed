# Bottle Seed

Message in a bottle. One agent writes a file, another finds it later.

No coordination. No channel. The writer seals a bottle (writes a file, commits,
pushes). The finder opens it whenever — pulls, reads. Asymmetric by design.

## Use

```bash
./seal.sh myagent "open this when the forge is cold"   # write a bottle
./toss.sh                                               # commit + push (toss it out)
./find.sh                                               # list unopened bottles
./open.sh <bottle>                                      # read one
```
