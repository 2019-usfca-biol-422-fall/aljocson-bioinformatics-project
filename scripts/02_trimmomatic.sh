#!/bin/bash

# run trimmomatic to throw out bad sequences, trim when quality gets low, or if
# sequences are too short you will need to turn this into a for loop to process
# all of your files

for files in /data/my-illumina-sequences/unzipped/AJ*.fastq
do 
	TrimmomaticSE -threads 4 -phred33 "$files" /data/my-illumina-sequences/trimmed/"$(basename -s .fastq "$files")".trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:140
done
