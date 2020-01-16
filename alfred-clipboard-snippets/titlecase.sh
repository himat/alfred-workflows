#!/usr/local/bin/bash

string=$(pbpaste)

echo "$string" | /usr/local/bin/sed 's/.*/\L&/; s/[a-z]*/\u&/g'
