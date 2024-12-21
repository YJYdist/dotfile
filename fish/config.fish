if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting
set -x EDITOR nvim

alias ff="fastfetch"
alias ls="eza -l"
alias mc="macchina"
alias z="zypper"
alias cfg="cd ~/dotfile"

# load starship
starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/yjydist/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
