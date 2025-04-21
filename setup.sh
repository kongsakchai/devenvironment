#! /bin/bash

current_shell=$(echo $SHELL)
if [[ $current_shell == *"zsh"* ]]; then
    if ! grep -q "# Workspaces" ~/.zshrc; then
        echo "" >>~/.zshrc
        echo "# Workspaces" >>~/.zshrc
        echo "export WORKSPACE=\$HOME/$1" >>~/.zshrc
        echo "source \$WORKSPACE/workspaces/.config" >>~/.zshrc

        echo "Please restart your terminal or run 'source ~/.zshrc' to apply changes."
    else
        echo "Workspaces already configured in .zshrc"
    fi
elif [[ $current_shell == *"bash"* ]]; then
    if ! grep -q "# Workspaces" ~/.bashrc; then
        echo "" >>~/.bashrc
        echo "# Workspaces" >>~/.bashrc
        echo "export WORKSPACE=\$HOME/$1" >>~/.bashrc
        echo "source \$WORKSPACE/workspaces/.config" >>~/.bashrc

        echo "Please restart your terminal or run 'source ~/.bashrc' to apply changes."
    else
        echo "Workspaces already configured in .bashrc"
    fi
elif [[ $current_shell == *"fish"* ]]; then
    if ! grep -q "# Workspaces" ~/.config/fish/config.fish; then
        echo "" >>~/.config/fish/config.fish
        echo "# Workspaces" >>~/.config/fish/config.fish
        echo "set -gx WORKSPACE \$HOME/$1" >>~/.config/fish/config.fish
        echo "source \$WORKSPACE/workspaces/.config" >>~/.config/fish/config.fish

        echo "Please restart your terminal or run 'source ~/.config/fish/config.fish' to apply changes."
    else
        echo "Workspaces already configured in config.fish"
    fi
else
    echo "Unsupported shell: $current_shell"
    echo "Please configure your shell manually."
    echo "Add the following lines to your shell configuration file:"
    echo "=========================================="
    echo "# Workspaces"
    echo "export WORKSPACE=\$HOME/$1"
    echo "source \$WORKSPACE/workspaces/.config"
fi
