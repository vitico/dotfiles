#!/bin/bash

# Define the Git repository URL
repo_url="https://github.com/vitico/dotfiles.git"
target_dir="$HOME/.local/dotfiles"

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git and try again."
  exit 1
fi

# Clone the Git repository to the target directory
if [ -d "$target_dir" ]; then
  echo "The target directory '$target_dir' already exists. Aborting."
  exit 1
else
  git clone "$repo_url" "$target_dir"
fi

# Install Mackup if it's not already installed
if ! command -v mackup &> /dev/null; then
  echo "Mackup is not installed. Installing Mackup..."
  pip install mackup
fi

# Backup existing .mackup.cfg if it exists
mackup_cfg_file="$HOME/.mackup.cfg"
if [ -f "$mackup_cfg_file" ]; then
  mv "$mackup_cfg_file" "$mackup_cfg_file.bak"
  echo "Backed up existing .mackup.cfg to $mackup_cfg_file.bak"
fi

# Configure Mackup to use the new dotfiles directory
echo "[storage]" > "$mackup_cfg_file"
echo "engine = file_system" >> "$mackup_cfg_file"
echo "path = $target_dir" >> "$mackup_cfg_file"

# Initialize Mackup
mackup backup

echo "Dotfiles repository cloned to '$target_dir' and Mackup is configured to use it."
