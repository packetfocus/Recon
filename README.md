# Recon
Using SubBrute and Eyewitness to perform OSINT on a supplied domain.

Usage:
./recon.sh DOMAIN TARGET OUTPUTFILE_FOR_SUBBRUTE OUTPUT_DIRECTORY

Example:
root@yourmom:~/tools/Recon#<b> ./recon.sh cisco.com /tmp/output_cisco.txt /tmp/output/cisco/ </b><br>
Starting SubDomain Brute Force! <br>
testing cisco.com <br>
output file for subbrute /tmp/output_cisco.txt <br>
output directory for EyeWitness /tmp/output/cisco/ <br>
<WAIT UNTIL COMPLETION><br>

NOTE:
The tools currently takes a target domain from the command line, runs Subbrute then imports that file into EyeWitness. Run setup.sh to create a tools directory and install SubBrute and EyeWitness. If you already have the tools then modify the recon.sh script with the appropriate paths.

ADDED:
Set target at the command line  <br>
Ability to set OUTPUT file and directory from command line <br>
created setup file (setup.sh) to install Subbrute and Eyewitness <br>

CREDITS:
https://github.com/TheRook/subbrute  <br>
https://github.com/ChrisTruncer/EyeWitness  <br>

TODO:
Figure out how to get status feedback from the tools while they are running.  <br>
  For Subbrute, could we count # of requests in target file, and have the tool count as it makes requests? Then output this to screen.
  For EyeWitness, can we just pipe STDOUT to screen to see its status?  <br>
Add in command line switch to use specific brute files for Subbrute instead of tools default  <br>
Add in command line switch for EyeWitness to expand on type of scan (Web, RDP, VNC, ALL)  <br>
Expand on setup script so that it checks for subbrute and eyewitness in locations other than ~tools/  <br>
Add command line switch to specify tool locations for SubBrute and EyeWintness.  <br>
