# rename .config/nvim to .config/nvim.bak and rename .config/nvim.bak to .config/nvim
#!/bin/bash

# Script to swap .config/nvim and .config/nvim.bak directories

CONFIG_DIR="$HOME/.config"
NVIM_DIR="$CONFIG_DIR/nvim"
NVIM_BAK_DIR="$CONFIG_DIR/nvim.bak"
TEMP_DIR="$CONFIG_DIR/nvim.tmp"

# Check if at least one of the directories exists
if [ ! -d "$NVIM_DIR" ] && [ ! -d "$NVIM_BAK_DIR" ]; then
    echo "Error: Neither $NVIM_DIR nor $NVIM_BAK_DIR exists"
    exit 1
fi

# Perform the swap using a temporary name
if [ -d "$NVIM_DIR" ] && [ -d "$NVIM_BAK_DIR" ]; then
    echo "Swapping nvim and nvim.bak..."
    mv "$NVIM_DIR" "$TEMP_DIR"
    mv "$NVIM_BAK_DIR" "$NVIM_DIR"
    mv "$TEMP_DIR" "$NVIM_BAK_DIR"
    echo "Successfully swapped nvim and nvim.bak"
elif [ -d "$NVIM_DIR" ]; then
    echo "Only nvim exists, renaming to nvim.bak..."
    mv "$NVIM_DIR" "$NVIM_BAK_DIR"
    echo "Renamed nvim to nvim.bak"
elif [ -d "$NVIM_BAK_DIR" ]; then
    echo "Only nvim.bak exists, renaming to nvim..."
    mv "$NVIM_BAK_DIR" "$NVIM_DIR"
    echo "Renamed nvim.bak to nvim"
fi
