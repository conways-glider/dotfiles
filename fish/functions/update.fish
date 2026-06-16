function update --description 'Update brew packages and the rust toolchain'
    set -l failed

    if type -q brew
        echo "==> brew update"
        brew update; or set -a failed "brew update"

        echo "==> brew upgrade"
        brew upgrade --yes; or set -a failed "brew upgrade"

        echo "==> brew cleanup"
        brew cleanup; or set -a failed "brew cleanup"
    end

    if type -q rustup
        echo "==> rustup self update"
        rustup self update; or set -a failed "rustup self update"

        echo "==> rustup update"
        rustup update; or set -a failed "rustup update"
    end

    if test (count $failed) -gt 0
        echo "Failed steps: $failed" >&2
        return 1
    end
    echo "All updates completed."
end
