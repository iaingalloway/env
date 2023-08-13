#!/bin/bash

set -euo pipefail

REPO_LOCATION=$1

ln -sf "$REPO_LOCATION/bashrc" "$HOME/.bashrc"

mkdir -p "$HOME/.config"
ln -sf "$REPO_LOCATION/config/bash-aliases" "$HOME/.config/.bash-aliases"
ln -sf "$REPO_LOCATION/config/starship.toml" "$HOME/.config/starship.toml"

ln -sf "$REPO_LOCATION/config/git/config" "$HOME/.gitconfig"

mkdir -p "$HOME/.config/git"
ln -sf "$REPO_LOCATION/config/git/menzies" "$HOME/.config/git/menzies"
