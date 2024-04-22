#!/bin/sh -e
for f in charts/*; do
  helm template "$f" | kubeval --strict
done
