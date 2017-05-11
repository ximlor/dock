#!/bin/bash

apt-get update && \
apt install -y git vim zsh

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -o ~/.vimrc https://gist.githubusercontent.com/ximlor/c7a0a5e1c6f2029fab7273f2b7c04aa0/raw/4a67e94ad14d7105f8745bf967ae0e32b96a0e23/.vimrc

chsh -s `which zsh`

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TERM=xterm-256color" >> ~/.zshrc
