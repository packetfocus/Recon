echo "checking to see if /tools directory exists"

if [ ! -d ~/tools ]
then
    mkdir -p ~/tools
else
    echo "TOOLS Directory exists in users home directory"
fi
echo "Checking to see if EyeWitness is installed"

if [ ! -d ~/tools/EyeWitness/ ]
then
    cd ~/tools
    echo "Downloading and Installing EyeWitness"
    git clone https://github.com/ChrisTruncer/EyeWitness.git
else
    echo "EyeWitnedd is installed"
fi

echo "Checking to see if SubBrute is installed"

if [ ! -d ~/tools/subbrute/ ]
then
    cd ~/tools
    echo "Downloading and Installing SubBrute"
    git clone https://github.com/TheRook/subbrute.git
else
    echo "SubBrute is Already Installed"

fi
