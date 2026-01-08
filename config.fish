# conf.d runs first!

# https://fishshell.com/docs/current/tutorial.html
# https://github.com/jorgebucaran/fish-shell-cookbook
# https://github.com/fish-shell/fish-shell/blob/master/share/config.fish
# https://github.com/fish-shell/fish-shell/blob/da32b6c172dcfe54c9dc4f19e46f35680fc8a91a/share/config.fish#L257-L269

#
# Env
#

# Set editor variables.
if test "$ZED_TERM" = true
    switch (uname)
        case Darwin
            set -gx VISUAL "zed --wait"
        case Linux
            set -gx VISUAL "zeditor --wait"
    end
end

# Set eza variables.
set -g EXA_STANDARD_OPTIONS --group-directories-first --icons
alias ls l

#
# Utils
#

# Initialize fuzzy finder.
if type -q fzf
    if not test -r $__fish_cache_dir/fzf_init.fish
        fzf --fish >$__fish_cache_dir/fzf_init.fish
    end
    source $__fish_cache_dir/fzf_init.fish
end

# Initialize zoxide for fast jumping with 'z'.
if type -q zoxide
    if not test -r $__fish_cache_dir/zoxide_init.fish
        zoxide init fish >$__fish_cache_dir/zoxide_init.fish
    end
    source $__fish_cache_dir/zoxide_init.fish
end

#
# Prompt
#

# Disable new user greeting.
set fish_greeting

#
# Keybindings
#

set --global fish_key_bindings fish_default_key_bindings
