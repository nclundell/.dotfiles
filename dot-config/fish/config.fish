### Set Defaults
set fish_greeting
set -x EDITOR "nvim"

### Setup CLI Apps
# FZF
if command -q fzf
  fzf --fish | source
end

# Mise
if command -q mise
  set -x MISE_GO_DEFAULT_PACKAGES_FILE "$HOME/.config/mise/default/go-packages"
  set -x MISE_NODE_DEFAULT_PACKAGES_FILE "$HOME/.config/mise/default/node-packages"
  set -x MISE_PYTHON_DEFAULT_PACKAGES_FILE "$HOME/.config/mise/default/python-packages"
  set -x MISE_RUBY_DEFAULT_PACKAGES_FILE "$HOME/.config/mise/default/ruby-gems"
  mise activate fish | source
end

# Starship Prompt
if command -q starship
  set -x STARSHIP_CONFIG "$HOME/.config/starship/config.toml"
  starship init fish | source
end

# Zoxide
if command -q zoxide
  zoxide init --cmd cd fish | source
end

### Aliases
if command -q eza
  alias ls='eza -alh --color=auto --icons=auto --group-directories-first'
  alias la='eza -a   --color=auto --icons=auto --group-directories-first'
  alias ll='eza -l   --color=auto --icons=auto --group-directories-first'
  alias lt='eza -aT  --color=auto --icons=auto --group-directories-first'
end

if command -q pacman
  alias p='sudo pacman'
end

if command -q zypper
  alias z='sudo zypper'
end
