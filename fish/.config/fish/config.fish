set LS_COLORS $LS_COLORS:'ow=01;34:'

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/rayan/.ghcup/bin $PATH # ghcup-env

# --- Valgrind --- #
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# --- path --- #
fish_add_path /home/rayan/.local/bin

# --- function wrapper --- #
function tmux
  set -lx TERM tmux-256color
  command tmux -2 $argv
end

# --- Starship --- #
starship init fish | source

# --- TokyoNight theme --- #

set -Ux DOCKER_HOST unix:///run/user/1000/docker.sock

    # TokyoNight Color Palette
    set -l foreground c0caf5
    set -l selection 33467c
    set -l comment 565f89
    set -l red f7768e
    set -l orange ff9e64
    set -l yellow e0af68
    set -l green 9ece6a
    set -l purple 9d7cd8
    set -l cyan 7dcfff
    set -l pink bb9af7

    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $purple
    set -g fish_color_comment $comment
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $comment

    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
    set -g fish_pager_color_selected_background --background=$selection


