#!/bin/bash

#######ensure the file existing and specific it is fasta file#####

if [[ "$#" != 1 ]];
 then
 echo "Specify FASTA file to be used with this script."
 exit
fi

#creat variables#
#read in data#
n=`grep -c ">" $1`
name=`grep ">" $1`
sequence=`grep -v ">" $1`
echo "number: $n"
echo "name: $name"
echo "sequence: $sequence"

#calculate length of sequence
len=${#sequence}
echo "Length: $len"

#input output to GCcount.txt
echo > GCcount.txt

#########loop through sequence in GC Percentage#####

for ((i=1; i<=$n; i++));
do

 #extract name#
 name=`grep ">" $1 | head -n $i | tail -n 1`
 echo "name: $name"

 #extract sequence
 sequence=`grep -v ">" $1 | head -n $i | tail -n 1`
 echo "sequence: $sequence"

 #calculate length of sequence
 len=${#sequence}
 echo "Length: $len"

 echo $sequence > sequence.txt

 #count the GC percentage from the sequence.txt
 C=`grep -o "C" sequence.txt | wc -l`
 G=`grep -o "G" sequence.txt | wc -l`
 GC=`expr $C + $G`
 echo "GC: $GC"

 #calculate percent of total length
 percent=`echo "scale=2; ($GC/$len*100)"|bc`
 echo "GC percentage: $percent"

 #print output name and GC percent to file
 echo "$name" >> GCCount.txt
 echo "$percent" >> GCCount.txt
done
