#!/usr/local/bin/bash

string=$(pbpaste)

string=${string,,}
 string=${string~}
echo "$string"
