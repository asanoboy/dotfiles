#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    test -r "../$f" || ln -s "$(pwd)/$f" "../$f"
done
