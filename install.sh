#!/bin/bash

# Install the dependencies
python3 -m pip install -Ur requirements.txt --break-system-packages

# Make executable
chmod +x ./nrm

# Create local bin directory 
mkdir -p $USER/.local/bin

# Symlink the executable to the local bin directory
ln -s ./nrm $USER/.local/bin/nrm

# Add the local bin directory to the PATH
SHELL=$(echo $SHELL | xargs basename)
SHELLRC=".bashrc"
if [ $SHELL == "zsh" ]; then
	SHELLRC=".zshrc"
elif [ $SHELL == "fish" ]; then
	SHELLRC=".config/fish/config.fish"
fi
echo "export PATH=$USER/.local/bin:$PATH" >> ~/$SHELLRC
