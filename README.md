# Dotfiles
These are dotfiles of my arch build. Currently I'm using xmonad, polybar, alacritty and zsh.

## Alacritty

Font:

```bash
sudo mkdir -p /usr/local/share/fonts/ttf/MesloNerdFontPatched
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
```

## zsh

Install:

```bash
sudo apt install zsh
```

Setting zsh as default shell:

```bash
chsh -s $(which zsh)
```

Reboot.
Installing oh-my-zsh and p10k theme:

```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git -C ~/.oh-my-zsh/custom/themes clone https://github.com/romkatv/powerlevel10k.git
```

Installing patched p10k font:

```bash
sudo mkdir -p /usr/local/share/fonts/ttf/MesloNerdFontPatched
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
```

Installing syntax highlighting and autosuggestion for zsh:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

