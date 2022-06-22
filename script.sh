#!/bin/bash/

echo "Installing Homebrew"

sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

sleep 2

echo "Installing Node and NPM"

brew install node@16

echo 'export PATH="/opt/homebrew/opt/node@16/bin:$PATH"' >> ~/.zshrc

sleep 2

echo "Installing Yarn"

brew install yarn

sleep 2

echo "Testing download"

echo "Homebrew"
brew -v
echo "Node"
node -v 
echo "NPM"
npm -v
echo "Yarn"
yarn -v

echo "If you see versions, you have successfully installed Homebrew, Node, NPM, and Yarn"

sleep 1

echo "COMPLETE"