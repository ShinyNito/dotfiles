#!/bin/bash

is_installed()
{
  local software_name=$1
  if command -v $software_name &> /dev/null; then
    return 0
  else
    return 1
  fi
}

gum_spin()
{
  local title=$1
  local cmd=$2
  gum spin --spinner dot --title "$title" -- "$cmd"
}

run_cmd()
{
  local title=$1
  local cmd=$2
  if is_installed "gum"; then
    gum_spin "$title" "$cmd"
  else
    echo "$title"
    eval "$cmd"
  fi
}

tips()
{
    local title="$1"
    if is_installed "gum"; then
      echo '{{ Color "2" "0" " '$title' " }}' | gum format -t template
    else
      echo "$title"
    fi
}

manage_file()
{
  local filename=$1

  if [ ! -L "$HOME/$filename" ]; then
    if [ -f "$HOME/$filename" ]; then
      run_cmd "Backing up existing $filename file..." "mv $HOME/$filename $HOME/$filename.bak"
    fi
    run_cmd "Creating $filename symlink..." "ln -s $LOCAL_DIR/$filename $HOME/$filename"
  else
    tips "$filename symlink already exists. Skipping..."
  fi
}

REPO_URL="https://github.com/ShinyNito/dotfiles"
LOCAL_DIR="$HOME/.dotfiles"

if [ -d "$LOCAL_DIR" ]; then
  cd "$LOCAL_DIR"
  gum_spin "Updating dotfiles..." "git pull origin main"
else
  gum_spin "Cloning dotfiles..." "git clone $REPO_URL $LOCAL_DIR"
fi

manage_file ".zshrc"

manage_file ".p10k.zsh"

tips "Done!"