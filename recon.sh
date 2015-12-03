#!/bin/sh

if [ "$1" = "" ]; then
   echo USAGE: "./scan cisco.com /tmp/output.txt /tmp/output/    "
   echo "./scan DOMAIN OUTPUTFILE OUTPUTDIRECTORY"
   exit
fi

echo "Starting SubDomain Brute Force!"
echo "testing $1"
echo "output file for subbrute $2"
echo "output directory for EyeWitness $3"
python /tools/subbrute/subbrute.py $1 > $2 
echo "Taking SubDomain list and running it through EyeWitness"
python /tools/EyeWitness/EyeWitness.py -f $2 --web --results 250 -d $3 --no-prompt
echo 'DONE! Check $3 report.html for output'
