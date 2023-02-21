REPO_LOCATION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ln -sf "$REPO_LOCATION/bashrc" "$HOME/.bashrc"
ln -sf "$REPO_LOCATION/config/bash-aliases" "$HOME/.config/.bash-aliases"

mkdir -p "$HOME/.config"
ln -sf "$REPO_LOCATION/config/starship.toml" "$HOME/.config/starship.toml"
