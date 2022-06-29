set LS_COLORS $LS_COLORS:'ow=01;34:'

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/rayan/.ghcup/bin $PATH # ghcup-env

# --- Valgrind --- #
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# --- Ruby --- #
set GEM_HOME $(ruby -e "puts Gem.user_dir")
fish_add_path $GEM_HOME

# --- path --- #
fish_add_path /home/rayan/.local/bin

# --- aliases --- #
# alias nvim=nvim.appimage

# --- function wrapper --- #
function tmux
  set -lx TERM tmux-256color
  command tmux -2 $argv
end
