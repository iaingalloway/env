#!/bin/bash

set -euo pipefail

REPO_LOCATION=$1

ln -sf "$REPO_LOCATION/config/bash/bashrc" "$HOME/.bashrc"

mkdir -p "$HOME/.config"
ln -sf "$REPO_LOCATION/config/bash/bash-aliases" "$HOME/.config/.bash-aliases"
ln -sf "$REPO_LOCATION/config/starship/starship.toml" "$HOME/.config/starship.toml"

ln -sf "$REPO_LOCATION/config/git/config" "$HOME/.gitconfig"

mkdir -p "$HOME/.config/git"
ln -sf "$REPO_LOCATION/config/git/ignore" "$HOME/.config/git/ignore"
