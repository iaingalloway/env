REPO_LOCATION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ln -sf "$REPO_LOCATION/bashrc" "$HOME/.bashrc"

mkdir -p "$HOME/.config"
ln -sf "$REPO_LOCATION/starship.toml" "$HOME/.config/starship.toml"
