#!/usr/bin/env bash

# Get system architecture
function get_arch() {
    local arch
    if /usr/bin/pgrep oahd >/dev/null 2>&1; then
        # The Apple M1 chip allows Rosetta, which is a disguised amd64 shell, however,
        # even when building the image under Rosetta, it will always be an arm64 image
        # due to CPU architecture restrictions
        arch="arm64"
    elif [[ $(arch) == "i386" ]]; then
        # macOS can still report `arch` as "i386", even on 64-bit machines
        # so we need to check the `uname -m` command if it is a 64-bit machine
        # if it is, then manually set it as "amd64"
        if [[ $(uname -m) == "x86_64" ]]; then
            arch="amd64"
        else
            arch="i386"
        fi
    else
        arch=$(arch)
    fi

    echo "${arch}"
}
