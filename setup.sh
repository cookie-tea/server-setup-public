ssh-keygen -t ed25519 -C "info@peterwlm.de"
echo ""
echo "Please add this SSH Public Key to your GitHub Account:"
echo ""
cat ~/.ssh/ed25519.pub
echo ""
read -p "Press enter to continue..."
git clone git@github.com:cookie-tea/server-setup.git
./server-setup/setup.sh
rm -r server-setup

