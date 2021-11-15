# Copyright (c) 2021, Christopher Fair
#
# Universal Plugin Aliases for Zsh
# There is nothing particularly zsh specific in this file.
# feel free to use/modify/redistribute this file however you see fit.
# Should work with bash, zsh, and fish.

is_arch_like() {
  [ -f /etc/arch-release ]
}

is_debian_like() {
  [ -f /etc/debian_version ]
}

is_redhat_like() {
  [ -f /etc/redhat-release ]
} 

is_gentoo_like() {
  [ -f /etc/gentoo-release ]
}

is_alpine_like() {
  [ -f /etc/alpine-release ]
}

is_void_like() {
  [ -f /etc/void-release ]
}

is_macos_like() {
  [ -f /etc/macos ]
}

is_homebrew_like() {
  [ -f /usr/local/bin/brew ]
} 


# Pacman aliases
if is_arch_like {
  alias update='sudo pacman -Sy'
  alias upgrade='sudo pacman -Syu'
  alias install-package='sudo pacman -S'
  alias remove='sudo pacman -R'
  alias search='pacman -Ss'
  alias list-packages='pacman -Q'
  alias update-mirrors='sudo pacman -Syy'
}

# Yay aliases
if is_arch_like {
  alias update='sudo yay -Sy'
  alias upgrade='sudo yay -Syu'
  alias install-package='sudo yay -S'
  alias remove='sudo yay -R'
  alias search='yay -Ss'
  alias list-packages='yay -Q'
}


# apt-get aliases
if is_debian_like {
  alias update = 'sudo apt-get update'
  alias upgrade='sudo apt-get update && sudo apt-get upgrade'
  alias install-package='sudo apt-get install'
  alias remove='sudo apt-get remove'
  alias search='apt-cache search'
  alias list-packages='apt-cache pkgnames'
} 

# yum aliases
if is_redhat_like{
  alias update='sudo yum update'
  alias upgrade='sudo yum update && sudo yum upgrade'
  alias install-package='sudo yum install'
  alias remove='sudo yum remove'
  alias search='yum search'
  alias list-packages='yum list'
}


# emerge aliases
if is_gentoo_like {
  alias update='sudo emerge --sync'
  alias upgrade='sudo emerge --sync && sudo emerge --update'
  alias install-package='sudo emerge'
  alias remove='sudo emerge -C'
  alias search='emerge -S'
  alias list-packages='emerge -p'
} 


# apk aliases
if is_alpine_like {
  alias update='sudo apk update'
  alias upgrade='sudo apk update && sudo apk upgrade'
  alias install-package='sudo apk add'
  alias remove='sudo apk del'
  alias search='apk search'
  alias list-packages='apk info'
}

# brew aliases
if is_homebrew_like {
  alias update='brew update'
  alias upgrade='brew update && brew upgrade'
  alias install-package='brew install'
  alias remove='brew uninstall'
  alias search='brew search'
  alias list-packages='brew list'
}

