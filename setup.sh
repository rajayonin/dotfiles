#!/usr/bin/env bash

install_zsh() {
    echo -e "Installing z-shell..."

    case "$packman" in
        0) sudo apt install zsh;;
        1) sudo pacman -S zsh;;
        2) sudo dnf install zsh;;
    esac

    # setup
    cp .zshrc $HOME

    # install zsh syntax highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    # install oh my zsh
    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
    sh install.sh
    rm install.sh

    # install PowerLevel10k
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    cp .p10k.zsh $HOME

    # change shell
    chsh -s $(which zsh)
    source ~/.zshrc
    source ~/powerlevel10k/powerlevel10k.zsh-theme


    echo -e "Done."
}


install_nvim() {
    echo -e "Installing neovim..."

    case "$packman" in
        0) sudo apt install nvim lua5.3;;
        1) sudo pacman -S nvim lua;;
        2) sudo dnf install nvim lua;;
    esac

    # setup
    cp nvim/* $HOME/.config/nvim


    echo -e "Done."
}


install_nala() {
    echo -e "Installing nala..."

    echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
    wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

    apt update && apt install nala

    echo -e "Done."
}


update_all() {
    echo -e "Copying rc files..."

    cp .* $HOME
    cp -p nvim/* $HOME/.config/nvim
    cp -p terminator/* $HOME/.config/terminator

    echo -e "Done."
}


install_all() {

    install_zsh()
    install_nvim()

    echo -e "Installing tools..."
    case "$packman" in
        0) 
            sudo apt install bat exa tldr terminator btop neofetch cmatrix fzf autojump
            install_nala()
        ;;
        1) 
            sudo pacman -S bat exa tldr terminator btop neofetch cmatrix fzf autojump
        ;;
        2) 
            sudo dnf install bat exa tldr terminator btop neofetch cmatrix fzf autojump-zsh
        ;;
    esac

        pip3 install grip

    echo -e "Done."
}


# Select package manager
echo "Which package manager are you using?\n0) APT\n1 pacman\n2) DNF"
read packman


# MENU
echo "Choose setup option:\n0) Install everything\n1) Update rc\n2) Install z-shell\n3) Install nvim"
read option


case "$option" in
    0) install_all();;
    1) update_all();;
    2) install_zsh();;
    3) install_nvim();;
esac
