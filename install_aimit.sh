#!/bin/bash

# Variables
REPO_URL="https://raw.githubusercontent.com/MozBlbn/tuttrue-aimit/refs/heads/main"
BINARY_NAME="aimit"
CONFIG_FILE="Config.toml"
INSTALL_DIR="/usr/local/bin"
CONFIG_DIR="$HOME/.config/aimit"

mkdir -p "$CONFIG_DIR"

echo "Downloading binary: $BINARY_NAME..."
wget -q "$REPO_URL/$BINARY_NAME" -O "$INSTALL_DIR/$BINARY_NAME"

chmod +x "$INSTALL_DIR/$BINARY_NAME"

echo "Downloading configuration file: $CONFIG_FILE..."
wget -q "$REPO_URL/$CONFIG_FILE" -O "$CONFIG_DIR/$CONFIG_FILE"

if [[ -f "$INSTALL_DIR/$BINARY_NAME" && -f "$CONFIG_DIR/$CONFIG_FILE" ]]; then
    echo "Installation successful!"
    echo "Binary installed to: $INSTALL_DIR/$BINARY_NAME"
    echo "Config file installed to: $CONFIG_DIR/$CONFIG_FILE"
else
    echo "Installation failed. Please check the script and repository."
    exit 1
fi
