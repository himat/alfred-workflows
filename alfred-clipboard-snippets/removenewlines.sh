#!/usr/local/bin/bash

string=$(pbpaste)

string=${string//$'\n'/ }

echo "$string"
