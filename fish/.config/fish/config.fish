set LS_COLORS $LS_COLORS:'ow=01;34:'

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/rayan/.ghcup/bin $PATH # ghcup-env

# --- Valgrind --- #
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# --- path --- #
fish_add_path $HOME/bin

# --- function wrapper --- #
function tmux
  set -lx TERM tmux-256color
  command tmux -2 $argv
end

# --- Starship --- #
starship init fish | source

# --- aliases --- #
# set alias for rofi powermenu
alias powermenu_t2=~/.config/rofi/powermenu/type-2/powermenu.sh
