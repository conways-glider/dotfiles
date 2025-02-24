if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr -a -g g git
    abbr -a -g d docker
    abbr -a -g k kubectl
    abbr -a -g p podman
    abbr -a -g z zellij

    if type -q nvim
        abbr -a -g vi nvim
        abbr -a -g vim nvim
    end

    if type -q bat
        abbr -a -g cat bat
    end

    if type -q eza
        abbr -a -g ls eza
    end

    if type -q tinty
        tinty init
    end
end
