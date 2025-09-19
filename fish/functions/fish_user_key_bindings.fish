# Only load fzf key bindings if fzf is installed
if type -q fzf
  function fish_user_key_bindings
    fzf --fish | source
  end
end
