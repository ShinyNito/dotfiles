#!/bin/bash

function manage_file {
  local filename=$1

  if [ ! -L "$HOME/$filename" ]; then
    if [ -f "$HOME/$filename" ]; then
      echo "Backing up existing $filename file..."
      mv "$HOME/$filename" "$HOME/$filename.bak"
    fi
    echo "Creating $filename symlink..."
    ln -s "$LOCAL_DIR/$filename" "$HOME/$filename"
  else
    echo "Skipping existing $filename symlink..."
  fi
}

REPO_URL="https://github.com/ShinyNito/dotfiles"
LOCAL_DIR="$HOME/.dotfiles"

if [ -d "$LOCAL_DIR" ]; then
  echo "Updating dotfiles..."
  cd "$LOCAL_DIR"
  git pull origin main
else
  echo "Cloning dotfiles..."
  git clone "$REPO_URL" "$LOCAL_DIR"
fi

manage_file ".zshrc"

manage_file ".p10k.zsh"

echo "Setup complete!"

