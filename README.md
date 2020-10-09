Project_2

###Overview###
In this project, I listed the useful initialize variables, based on that I creat the loop for calculate the GC percents and Sequence name in the GCcount.txt.

####loop though the GC####
#the sanity check the input file is correct as a fasta file, and ensure that is existing#
I use "if, fi" statement to check it. Then based on the initialize variables to creat the loop fpr calculate the GC percents.
C=`grep -o "C" sequence.txt | wc -l`
G=`grep -o "G" sequence.txt | wc -l`
GC=`expr $C + $G`
echo "GC: $GC"
percent=`echo "scale=3; ($GC/$len)" | bc`
Finally, print the name and GC percent to GCcount.txt file.

#Motivation#
This script could identify the fasta file, and read the name, extract the name and sequence of the file. The important that could be calculate the percentage of GC, it could analysis the GC percents in the whole sequence.

#Output File#

| name           | GC%   |
|----------------|-------|
| DI245396.1     | 43.00 |
| DI245395.1     | 42.00 |
| HW262829.1     | 43.00 |
| 546218138      | 42.00 |
| X13802.1       | 39.00 |
| NM_001179558.3 | 51.00 |
| NM_001178613.2 | 45.00 |
| AY558240.1     | 51.00 |
| AB052924.1     | 51.00 |

#Reflection#
Why do you think that many biologists skip the step of making their code publicly available and adding documentation?
Because they don't want others people plagiarize their scientific results. Or they don't others people proof codes.

Why do you think I asked you to write sanity checks into your code? Do you see room for additional sanity checks to be added?
I think the reasoning for the sanity checks was to help us understand the different parts of the script. And it would help us to creat a loop.
Yes.I do. there has some rooms for additional sanity can add. 

In my experience, loops are the hardest concept for students to learn. Why do you think this is? What struggles did you have when trying to write a loop into your code?
I definitely agree with you. It's difficult for beginner. As a beginner, except the fundamental staments(ig..if, else, while, fi),I have to know how to set up the variables and iterations in a loop.
And for me, some of wildcard and sign (ig.."", '', {}, []) I am not clearly how to use them. 
  
