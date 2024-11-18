#!/bin/bash
# current_path=$(pwd)

echo "echo 'Source at location: $(current_path)'" >> ./.zshrc

# # TODO: install vscode 
# # TODO: install iterm2
# # TODO: install chrome

# echo "Current path" $current_path

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cat ~/.zshrc >> ./.zshrc
cat ~/.zshrc.pre-oh-my-zsh >> ./.zshrc

# Remove old .zshrc file
rm ~/.zshrc || echo "No .zshrc file"
ln -s ${current_path}/.zshrc ~/.zshrc

# Install Golang
# Visit this website: https://go.dev/dl/

# Install Docker
# Visit this website: https://docs.docker.com/desktop/setup/install/mac-install/

# Install flutter
# Visit this website: https://docs.flutter.dev/get-started/install/macos/mobile-ios
# Once install, flutter zip should be in the ~/Downloads
mkdir ~/.development 
unzip ~/Downloads/flutter_macos_arm64_3.24.5-stable.zip -d ~/.development/
echo "export PATH=\$HOME/.development/flutter/bin:\$PATH" >> .zshrc

# # Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc

# Install XCode on AppStore
# Install Apple Developer on AppStore
# Install Test Flight on AppStore
sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
xcodebuild -downloadPlatform iOS
brew install cocoapods

# Install postman
# Visit this website: https://www.postman.com/downloads/

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install stable
