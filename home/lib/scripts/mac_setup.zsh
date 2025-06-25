#!/usr/bin/env zsh

# s - setup message 
# p - password required

#------------------------------------------------------------
# Before Running This Script:
# - Confirm that you have done initial macOS setup (Apple ID, preferences).
# - Install homebrew if not already installed.
#------------------------------------------------------------

# Install Xcode Command Line Tools
xcode-select --install

# Install Rosetta 2 (for Apple Silicon Macs)
if [[ $(uname -m) == 'arm64' ]]; then
    softwareupdate --install-rosetta --agree-to-license
fi

# Update & upgrade Homebrew
brew update
brew upgrade

#------------------------------------------------------------
# CLI Tools & Languages
#------------------------------------------------------------
brew install stow
brew install hadolint
brew install gcc
brew install git
brew install jq
brew install mysql          # s
brew install postgresql     # s
brew install neofetch
brew install fnm
brew install openssl
brew install python
brew install go
brew install dotnet         # p
brew install angular-cli
brew install powershell     # p
brew install tree
brew install tmux
brew install zsh-syntax-highlighting    # s
brew install jupyterlab                 # s

# NVM initialization: you can append these lines to ~/.zshrc later 
# or manage manually in your dotfiles.

#------------------------------------------------------------
# GUI Applications via Cask
#------------------------------------------------------------
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask docker
brew install --cask dropbox
brew install --cask utm
brew install --cask microsoft-teams
brew install --cask zoom
brew install --cask rider
brew install --cask whatsapp
brew install --cask spotify
brew install --cask discord
brew install --cask bitwarden
brew install --cask maccy
brew install --cask parallels   # ensure terminal has permissions

# Note: Some apps like Shortcat or Screen Studio might not be available via brew.
# You will need to install those manually.

#------------------------------------------------------------
# oh-my-zsh & Plugins
#------------------------------------------------------------

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

#------------------------------------------------------------
# Final Notes
#------------------------------------------------------------
echo "Setup complete! Review any manual installs needed (like App Store apps, Shortcat, Screen Studio, parallels, MS word, etc)."

# Hor0, Magnet, Word/Excel, Parallels, Screen Studio, Shortcat, MonitorControlLite
echo "Next steps: Set up dotfiles, install Nerd Fonts."

# https://www.nerdfonts.com/font-downloads