#!/bin/bash

echo "Installing python3 dependencies"
python3 -m pip install -Ur requirements.txt --break-system-packages >/dev/null

echo "Make file executable"
chmod +x ./nrm

echo "Create local bin directory" 
mkdir -p $HOME/.local/bin

echo "Symlink the executable to the local bin directory"
ln -s $(pwd)/nrm $HOME/.local/bin/nrm || echo "Failed to symlink the executable to the local bin directory" && exit 1

echo "Add the local bin directory to the PATH"
SHELL=$(echo $SHELL | xargs basename)
SHELLRC="$HOME/.bashrc"
if [ $SHELL == "zsh" ]; then
	SHELLRC="$HOME/.zshrc"
elif [ $SHELL == "fish" ]; then
	XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
	SHELLRC="$XDG_CONFIG_HOME/fish/config.fish"
fi
echo "Adding to $SHELLRC"
echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> $SHELLRC
