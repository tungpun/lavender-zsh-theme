sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p ~/.oh-my-zsh/custom/themes/
wget -xqO ~/.oh-my-zsh/custom/themes/lavender.zsh-theme https://git.io/fxscf
sed -i.bak 's/^[[:space:]]*ZSH_THEME=.*/ZSH_THEME="lavender"/' ~/.zshrc
source ~/.zshrc 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i.bak 's/^plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
source ~/.zshrc
