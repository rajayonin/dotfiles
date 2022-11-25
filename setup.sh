#!/usr/bin/env bash

# Select package manager
echo "Which package manager are you using?\n0) APT\n1 pacman\n2) DNF"
read packman

# MENU
echo "Choose setup option:\n0) Install z-shell\n1) Install nvim\n2) Update all"
read option

case "$option" in
    0)  # install zsh
        # TODO: test this shit

        case "$packman" in
            0) apt install zsh;;
            1) pacman -S zsh;;
            2) dnf install zsh;;
        esac

        # setup
        cp .zshrc $HOME

        # install zsh syntax highlighting
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

        # install PowerLevel10k
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
        cp .p1pk.zsh $HOME

        # install oh my zsh
        wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
        sh install.sh
        rm install.sh

        chsh -s $(which zsh)
        source ~/.zshrc
        source ~/powerlevel10k/powerlevel10k.zsh-theme
    ;;

    1)  # install neovim
        case "$packman" in
            0) apt install nvim lua5.3;;
            1) pacman -S nvim lua;;
            2) dnf install nvim lua;;
        esac

        # setup
        cp nvim/* $HOME/.config/nvim

        # TODO: finish

    ;;

    2)  # update all
        cp .* $HOME
        cp nvim/* $HOME/.config/nvim
    ;;

esac

# FIXME: only for apt, more options
# install nala
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

# install bat, exa
sudo apt install bat exa tldr

