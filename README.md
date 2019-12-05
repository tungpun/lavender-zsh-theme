# Lavender Terminal Theme

> Forked from win0err/aphrodite-terminal-theme

Minimalistic Lavender theme does not have any visual noise. Displays only the necessary information: current user, hostname, working directory, git branch if exists.
Looks great both with dark and white terminals.

![Lavender Terminal Theme](https://raw.githubusercontent.com/tungpun/lavender-zsh-theme/master/screenshot.jpg)

## Installation 

### Requirements

* UNIX-like OS (Linux, macOS, BSD)
* wget and git installed

### Scripts:

* For Ubuntu LTS

Run `INSTALL.sh`

### Manually:

#### Zsh

* Install  [**Oh My Zsh**](https://github.com/robbyrussell/oh-my-zsh)

* Install the theme

```sh
mkdir -p ~/.oh-my-zsh/custom/themes/
wget -xqO ~/.oh-my-zsh/custom/themes/lavender.zsh-theme https://git.io/fxscf
sed -i.bak 's/^[[:space:]]*ZSH_THEME=.*/ZSH_THEME="lavender"/' ~/.zshrc
source ~/.zshrc 
```

#### Plugins

This theme should be used with these plugins:

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

**~/.zshrc**
```
...
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
...
```

---
_Developed by [Sergei Kolesnikov](https://github.com/win0err)_

_Developed by [Tung Pun](https://github.com/tungpun)_
