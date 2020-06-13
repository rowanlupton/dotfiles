#!/bin/bash

# gotta have zsh installed!
if [ OPERATING_SYSTEM == "Linux" ]; then
    sudo apt install zsh -y
fi

# set zsh as our shell
chsh -s /bin/zsh

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# will need to implement a HOME_DIRECTORY variable to account for directory structure across systems
ln -s $HOME/.user-settings/.zshrc /Users/rowan/.zshrc
ln -s $HOME/.user-settings/.oh-my-zsh /Users/rowan/.oh-my-zsh


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k