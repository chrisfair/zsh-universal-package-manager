# universal-package-manager 

This ZSH plugin abstracts the interface for all plugin managers that I
can think of, including macos (when using brew), debian, redhat, gentoo, alpine,
and arch based systems.  This will allow you to simply type the following command 
instead of the distri system
*upgrade - upgrades the system
*install-package - installs a package
*remove - removes a package
*search - searchs for a package
*list-packages - lists installed packages 
*update-mirrors - updates mirrors for speed


## Plugin Installation

### Antigen

If you use [Antigen](http://antigen.sharats.me/ "Antigen plugin manager for ZSH"),
add the following line to your plugins list:

`antigen bundle chrisfair/zsh-universal-package-manager`

### Oh My Zsh

If you use [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh "OMZ manager for ZSH"),
add `zsh-universal-package-manager` to your `plugins` list and clone this repository to your
`$ZSH_CUSTOM/plugins` directory:

`$ ( cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrisfair/zsh-universal-package-manager)`

### Zgen

If you're using [Zgen](https://github.com/tarjoilija/zgen), add

`zgen load chrisfair/zsh-universal-package-manager`

to your `.zshrc` with your other zgen plugin load commands.

### Zplugin

If you're using [Zplugin](https://github.com/zdharma/zplugin), add

`zplugin light "chrisfair/zsh-universal-package-manager"`

to your `.zshrc` with your other zplugin load commands.


