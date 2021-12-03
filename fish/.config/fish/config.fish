### ASDF Settings
set -x ASDF_DIR $HOME/.local/share/asdf
set -x ASDF_DATA_DIR $HOME/.local/share/asdf
set -x ASDF_CONFIG_FILE $HOME/.config/asdf
# Source ASDF For OSX
source /usr/local/opt/asdf/libexec/asdf.fish

### Set Defaults
set fish_greeting
set -x EDITOR "nvim"

### Starship Prompt
starship init fish | source

### Aliases
# Use exa For ls
alias ls='exa -alh --color=always --group-directories-first'
alias la='exa -a   --color=always --group-directories-first'
alias ll='exa -l   --color=always --group-directories-first'
alias lt='exa -aT  --color=always --group-directories-first'

