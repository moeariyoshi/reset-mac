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
# ex. brew install --cask visual-studio-code
# Add more applications as needed
# Reference: https://formulae.brew.sh/

echo "Installation complete."
