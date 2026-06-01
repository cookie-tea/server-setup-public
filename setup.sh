#!/bin/bash
ssh-keygen -t ed25519 -C "info@peterwlm.de" -f $HOME/.ssh/id_ed25519 -N ""
echo ""
echo "Please add this SSH Public Key to your GitHub Account:"
echo ""
cat ~/.ssh/id_ed25519.pub
echo ""
echo "https://github.com/settings/ssh/new"
echo ""
read -p "Press enter to continue..."
git clone git@github.com:cookie-tea/server-setup.git
./server-setup/setup.sh
rm -r server-setup
