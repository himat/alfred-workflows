#!/usr/local/bin/bash

phone_str=$(pbpaste)

echo "$phone_str" | /usr/local/bin/sed -E 's/[^0-9]*([0-9]*)[^0-9]*([0-9]*)[^0-9]*([0-9]*)/\1-\2-\3/'
# echo "$phone_str" | /usr/local/bin/sed -E 's/(\d{3}).*(\d{3}).(\d{4})/\1-\2-\3/'
