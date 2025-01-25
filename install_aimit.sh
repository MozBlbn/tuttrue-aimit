#!/bin/bash

# Variables
REPO_URL="https://raw.githubusercontent.com/MozBlbn/tuttrue-aimit/refs/heads/main"
BINARY_NAME="aimit"
INSTALL_DIR="/usr/local/bin"


echo "Downloading binary: $BINARY_NAME..."
wget -q "$REPO_URL/$BINARY_NAME" -O "$INSTALL_DIR/$BINARY_NAME"

chmod +x "$INSTALL_DIR/$BINARY_NAME"

if [[ -f "$INSTALL_DIR/$BINARY_NAME" ]]; then
    echo "Installation successful!"
    echo "Binary installed to: $INSTALL_DIR/$BINARY_NAME"
else
    echo "Installation failed. Please check the script and repository."
    exit 1
fi
