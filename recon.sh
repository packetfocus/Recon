#!/bin/sh

if [ "$1" = "" ]; then
   echo USAGE: "./recon cisco.com"
   echo "./scan DOMAIN"
   exit
fi

echo "Starting SubDomain Brute Force!"
echo "testing $1"
python /tools/subbrute/subbrute.py $1 > /tmp/output.txt 
echo "Taking SubDomain list and running it through EyeWitness"
python /tools/EyeWitness/EyeWitness.py -f /tmp/output/output.txt --web --results 250 -d /tmp/output/ --no-prompt
echo 'DONE! Check /tmp/output/report.html for output'
