#!/bin/sh -e

# generate metadata.json for all upstream opscode cookbooks (metadata.json should not exist in development repositories)
knife cookbook metadata -o cookbooks/ --all

# additionally, remove known .gitignore files
[ -e ./cookbooks/runit/.gitignore ] && rm ./cookbooks/runit/.gitignore
