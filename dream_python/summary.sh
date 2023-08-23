#!/bin/bash

printf "file_name\tpass_mapq\treads_low_mapq\tnon_SmaI\tmapped\tunmapped\ttotal\n" > summary.stat;

for i in *_stats.txt; 
    do printf ${i/_stats.txt}"\t" >> summary.stat; 
        echo $(grep ":" $i | awk -F":" '{print$2"\t"}') >> summary.stat; 
    done
