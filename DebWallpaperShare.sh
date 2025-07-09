#!/bin/zsh

REMOTE_HOST="192.168.0.99"         # Replace with your PC's IP
SHARE_NAME="Wallpapers"
DEST_DIR="$HOME/Wallpapers"

mkdir -p "$DEST_DIR"

smbclient "//$REMOTE_HOST/$SHARE_NAME" -N -c "prompt OFF; recurse ON; lcd \"$DEST_DIR\"; mget *"
