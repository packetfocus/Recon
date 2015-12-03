#!/bin/sh

if [ "$1" = "" ]; then
   echo USAGE: "./scan cisco.com /tmp/output.txt /tmp/output/    "
   echo "./scan DOMAIN OUTPUTFILE OUTPUTDIRECTORY"
   exit
fi

echo "Starting Recon/OSINT against $1"
echo ""
echo "OPTIONS------"
echo "Output file for SubBrute $2"
echo "Output directory for EyeWitness $3"
echo "Starting Sub-Domain brute force. be PATIENT, this will take some time"
python ~/tools/subbrute/subbrute.py $1 > $2 
echo "Taking SubDomain list and running it through EyeWitness"
python ~/tools/EyeWitness/EyeWitness.py -f $2 --web --results 250 -d $3 --no-prompt
echo 'DONE! Check $3 report.html for output'
