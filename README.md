# Lavender Terminal Theme

> Forked from win0err/aphrodite-terminal-theme

Minimalistic Lavender theme does not have any visual noise. Displays only the necessary information: current user, hostname, working directory, git branch if exists.
Looks great both with dark and white terminals.

![Lavender Terminal Theme](https://user-images.githubusercontent.com/11278181/30273006-cd4f5b44-96ff-11e7-9519-de71cae726e6.png)

## Installation 

### Requirements
- UNIX-like OS (Linux, macOS, BSD)
- wget and git installed

### Zsh
[**Oh My Zsh**](https://github.com/robbyrussell/oh-my-zsh)
```sh
mkdir -p ~/.oh-my-zsh/custom/themes/
wget -xqO ~/.oh-my-zsh/custom/themes/lavender.zsh-theme https://git.io/fxscf
sed -i.bak 's/^[[:space:]]*ZSH_THEME=.*/ZSH_THEME="lavender"/' ~/.zshrc
source ~/.zshrc 
```

### Plugins

This theme should be used with these plugins:

**~/.zshrc**
```
...
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
...
```

### Bash

Bash support will be added later.

---
_Developed by [Sergei Kolesnikov](https://github.com/win0err)_
_Developed by [Tung Pun](https://github.com/tungpun)_