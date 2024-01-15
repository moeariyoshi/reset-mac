#!/bin/bash

#######################################
# Assumed to be run after the following:
# 1. Manally erase mac:
# - Restart your Mac in Recovery Mode (hold down Command + R during startup).
# - Use Disk Utility to erase your Mac's startup disk.
# - Choose APFS (for me) 
# - Check by About This Mac > More Info > System Report > Storage > File System
# - Reinstall macOS through the "Reinstall macOS" option.
# 2. Run this script to reinstall: `reinstall.sh`
#######################################

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install applications using Homebrew
echo "Installing applications..."

# Google Chrome
brew install --cask google-chrome

# VSCode
brew install --cask visual-studio-code

# AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# Terraform CLI
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# NordVPN
brew install --cask nordvpn

# Zoom
brew install --cask zoom

# Slack
brew install --cask slack

# Notion
brew install --cask notion

# Spotify 
brew install --cask spotify

# Microsoft Office
brew install --cask microsoft-office

# Docker
brew install docker

# Eclipse for Java
brew install --cask eclipse-java

echo "Installation complete."
