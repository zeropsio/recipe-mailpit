#!/bin/sh

GH_REPO="axllent/mailpit"
TIMEOUT=90

# Get latest version
VERSION=$(wget -qO- --timeout="${TIMEOUT}" "https://api.github.com/repos/${GH_REPO}/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
if [ $? -ne 0 ]; then
    echo "\nFailed to get latest Mailpit version"
    exit 1
fi

# Detect architecture
OS_type="$(uname -m)"
case "$OS_type" in
    x86_64)
        OS_type='amd64'
        ;;
    i?86)
        OS_type='386'
        ;;
    aarch64)
        OS_type='arm64'
        ;;
    *)
        echo 'Architecture not supported'
        exit 2
        ;;
esac

GH_REPO_BIN="mailpit-linux-${OS_type}.tar.gz"
LINK="https://github.com/${GH_REPO}/releases/download/${VERSION}/${GH_REPO_BIN}"

echo "Downloading Mailpit $VERSION"
wget -q --timeout="${TIMEOUT}" -O - "${LINK}" | tar zxf - || {
    echo "Error downloading"
    exit 2
}

chmod 755 mailpit
