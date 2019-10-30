#!/bin/bash

# a script to count the number of
# sequences in a set of g zipped fastq 
# files

# Angela Jocson
# October 20, 2019
# aljocson@usfca.edu

# count the number of sequences using 
# zgrep 
zgrep -c "^+$" /iseq/control-neg* 
