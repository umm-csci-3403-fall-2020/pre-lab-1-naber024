#!/usr/bin/env bash

#r0
awk 'match($0, /(\w+), (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt | tee r0_output.txt

#r1
awk 'match($0, /I am (\w+). My favorite sandwich is (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt | tee r1_output.txt

#r2
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt | tee r2_output.txt
