#!/bin/bash

# Check if Homebrew is installed, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# If on ARM-based Mac, install xz
if [[ "$(uname -m)" == "arm64" ]]; then
    echo "Installing xz..."
    brew install xz
fi

# Check if pyenv is installed, install if we don't have it
if test ! $(which pyenv); then
    echo "Installing pyenv..."
    brew install pyenv
fi

# Add pyenv to bash or zsh
if [[ -z "$(grep 'pyenv init' ~/.bashrc)" ]]; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
fi
if [[ -z "$(grep 'pyenv init' ~/.bash_profile)" ]]; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
fi
if [[ -z "$(grep 'pyenv init' ~/.zshrc)" ]]; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

# Install Python 3.10.12 and set as global version
echo "Installing Python 3.10.12 and setting it as global version..."
pyenv install 3.10.12
pyenv global 3.10.12

echo "Python 3.10.12 installed and set as global version."

# End of script
echo "Setup complete!"
