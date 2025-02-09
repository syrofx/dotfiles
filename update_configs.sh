#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

SOURCE="/home/syro"
DESTINATION="/home/syro/repos/dotfiles"

FILES=(
    ".bashrc"
    "colors.sh"
    ".tmux.conf"
    ".zshrc"
    ".emacs"
)

if [ ! -d "$DESTINATION" ]; then
    echo "That destination path does not exists. you fool!"
fi

for file in "${FILES[@]}"; do
    if [ -f "$SOURCE/$file" ]; then
        cp "$SOURCE/$file" "$DESTINATION"
        echo -e "${GREEN}Copied: $SOURCE/$file${NC}"
    else
        echo -e "${RED}Not found: $SOURCE/$file${NC}"
    fi
done

echo -e "\n\nAll files were copied."
