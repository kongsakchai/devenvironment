#! /bin/bash

#!/bin/bash

echo "What's your shell?"
echo "1) bash"
echo "2) zsh"
echo "3) fish"

read -p "Please enter the number corresponding to your shell: " choice

case $choice in
  1)
    user_shell="bash"
    ;;
  2)
    user_shell="zsh"
    ;;
  3)
    user_shell="fish"
    ;;
  *)
    echo "Invalid choice. Please run the script again and select a valid option."
    exit 1
    ;;
esac

if [[ $user_shell == *"zsh"* ]]; then
    if ! grep -q "# Workspaces" ~/.zshrc; then
        echo "" >>~/.zshrc
        echo "# Workspaces" >>~/.zshrc
        echo "export WORKSPACE=\$HOME/$1" >>~/.zshrc
        echo "source \$WORKSPACE/workspaces/.config" >>~/.zshrc

        echo "Please restart your terminal or run 'source ~/.zshrc' to apply changes."
    else
        echo "Workspaces already configured in .zshrc"
    fi
fi

if [[ $user_shell == *"bash"* ]]; then
    if ! grep -q "# Workspaces" ~/.bashrc; then
        echo "" >>~/.bashrc
        echo "# Workspaces" >>~/.bashrc
        echo "export WORKSPACE=\$HOME/$1" >>~/.bashrc
        echo "source \$WORKSPACE/workspaces/.config" >>~/.bashrc

        echo "Please restart your terminal or run 'source ~/.bashrc' to apply changes."
    else
        echo "Workspaces already configured in .bashrc"
    fi
fi

if [[ $user_shell == *"fish"* ]]; then
    if ! grep -q "# Workspaces" ~/.config/fish/config.fish; then
        echo "" >>~/.config/fish/config.fish
        echo "# Workspaces" >>~/.config/fish/config.fish
        echo "set -gx WORKSPACE \$HOME/$1" >>~/.config/fish/config.fish
        echo "source \$WORKSPACE/workspaces/.config.fish" >>~/.config/fish/config.fish

        echo "Please restart your terminal or run 'source ~/.config/fish/config.fish' to apply changes."
    else
        echo "Workspaces already configured in config.fish"
    fi
fi
