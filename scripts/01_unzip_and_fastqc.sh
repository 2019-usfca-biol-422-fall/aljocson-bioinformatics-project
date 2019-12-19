#!/bin/bash

# A script to unzip and run fastqc on a folder of fastq.gz
# Illumina sequence Files

# Angela Jocson
# October 30, 2019
# aljocson@usfca.edu


# move the files to the unzipped directory

echo Copying files...
cp -v /data/my-illumina-sequences/raw/*.gz /data/my-illumina-sequences/unzipped

# unzip the files
echo Unzipping files...
gunzip /data/my-illumina-sequences/unzipped/*

# run fastqc and put output into output folder
echo Running fastqC...
fastqc /data/my-illumina-sequences/unzipped/*.fastq --outdir=output/fastqc-results
