# Python Development Environment Setup at One Squared

This guide will help you set up your Python development environment at One Squared. 

## Prerequisites

- A MacOS or Linux system. Note that the instructions are written with MacOS users in mind, but most of them should work on Linux as well.

## Steps to Set Up Your Environment

### Step 1: Install Homebrew

Homebrew is a package manager for MacOS that we will use to install `pyenv`. If you already have Homebrew installed, you can skip this step.

Open Terminal and paste the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

To ensure Homebrew installed correctly, type the following command:

```bash
brew doctor
```

### Step 3: Install XZ

If you are using an ARM-based Mac, you'll need to install `xz`` using brew before proceeding. If your Mac uses Intel chips, you can skip this step.

In your terminal, type:

```bash
brew install xz
```

### Step 2: Install Pyenv

`pyenv` is a Python version management tool. It lets you easily switch between different Python versions.

You can install `pyenv` using Homebrew with the following command:

```bash
brew install pyenv
```

After installing `pyenv`, add `pyenv init` to your shell to enable shims and autocompletion. Please make sure `eval "$(pyenv init -)"` is placed toward the end of the shell configuration file since it manipulates `PATH` during the initialization.

For **bash**:

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
```

For **Zsh**:

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```

Restart your shell so the path changes take effect:

```bash
exec "$SHELL"
```

You can now begin installing Python versions through `pyenv`. For example, to install Python 3.10.12, you would use:

```bash
pyenv install 3.10.12
```

You can switch between installed versions globally:

```bash
pyenv global 3.10.12
```

Or locally in a directory:

```bash
pyenv local 3.10.12
```

## Congratulations!

You have now successfully set up your Python development environment at One Squared. You can start building awesome Python projects!
