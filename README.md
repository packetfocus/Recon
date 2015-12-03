# Recon
Using SubBrute and Eyewitness to perform OSINT on a supplied domain.

Usage:
./recon.sh DOMAIN TARGET OUTPUTFILE_FOR_SUBBRUTE OUTPUT_DIRECTORY

Example:
root@yourmom:~/tools/Recon# ./recon.sh cisco.com /tmp/output_cisco.txt /tmp/output/cisco/
Starting SubDomain Brute Force!
testing cisco.com
output file for subbrute /tmp/output_cisco.txt
output directory for EyeWitness /tmp/output/cisco/
<WAIT UNTIL COMPLETION>

NOTE:
The tools currently takes a target domain from the command line, runs Subbrute then imports that file into EyeWitness. Run setup.sh to create a tools directory and install SubBrute and EyeWitness. If you already have the tools then modify the recon.sh script with the appropriate paths.

ADDED:
Set target at the command line
Ability to set OUTPUT file and directory from command line
created setup file (setup.sh) to install Subbrute and Eyewitness

CREDITS:
https://github.com/TheRook/subbrute
https://github.com/ChrisTruncer/EyeWitness
