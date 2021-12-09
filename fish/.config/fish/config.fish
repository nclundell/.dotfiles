### ASDF Settings
set -x ASDF_DIR $HOME/.local/share/asdf
set -x ASDF_DATA_DIR $HOME/.local/share/asdf
set -x ASDF_CONFIG_FILE $HOME/.config/asdf
# Source ASDF For OSX Install
#source /usr/local/opt/asdf/libexec/asdf.fish
# Source ASDF for AUR Install

### Set Defaults
set fish_greeting
set -x EDITOR "nvim"

### Starship Prompt
starship init fish | source

# ABCDE

function cdrip
  switch $argv
    case ogg mp3 flac opus
      abcde -o $argv
    case '*'
      echo "Ripping to ogg by default."
      abcde -o ogg
  end
end

### Aliases
# Set abcde config location
alias abcde='abcde -c $HOME/.config/abcde/config'

# Use exa For ls
alias ls='exa -alh --color=always --group-directories-first'
alias la='exa -a   --color=always --group-directories-first'
alias ll='exa -l   --color=always --group-directories-first'
alias lt='exa -aT  --color=always --group-directories-first'

