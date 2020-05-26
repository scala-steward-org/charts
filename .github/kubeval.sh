#!/bin/sh -e
for f in charts/*; do
  helmv3 template "$f" | kubeval --strict
done
