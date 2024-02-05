# ls
alias ls="ls -F --color=auto"
alias la="ls -A"
alias ll="ls -hl"
alias log="ls -hog"
alias lla="ls -Ahl"
alias lsd="ls -d"

# cd
alias ..='cd ..'
alias ...='cd../..'
alias ....='cd ../../..'

# Start ssh agent
alias ssh-start="eval $(ssh-agent)"

# Disk usage for /home/derek
alias durn="du -s --exclude=pCloudDrive * .* | sort -rn | head -25"

# conda
alias conda-off="conda deactivate"
alias conda-on="source $HOME/anaconda3/bin/activate && conda init"
alias ls-env="conda env list"

# Express VPN
alias evpn-start="systemctl start expressvpn.service"
alias evpn=expressvpn
alias evpnc="expressvpn connect"
alias evpncs="expressvpn connect smart"
alias evpncc="expressvpn connect cato"  # Toronto
alias evpncu="expressvpn connect usse"  # Seattle
alias evpnd="expressvpn disconnect"
alias evpnl="expressvpn list"
alias evpnla="expressvpn list all"
alias evpns="expressvpn status"

# Getting Things Done
alias rem="remind ~/Documents/GTD/main.rem"
alias naa="grep '^(A)' ~/Documents/GTD/next_actions_*.txt"
alias naap="grep '^(A)' ~/Documents/GTD/next_actions_personal.txt"
alias nabp="grep '^(B)' ~/Documents/GTD/next_actions_personal.txt"
alias nacp="grep '^(C)' ~/Documents/GTD/next_actions_personal.txt"
alias nadp="grep '^(D)' ~/Documents/GTD/next_actions_personal.txt"


# makemake-specific aliases
if [ $HOSTNAME = makemake ]; then
    # apt
    alias aptuu="sudo apt update && sudo apt upgrade"
    alias apti="sudo apt install"
    alias apta="sudo apt autoremove"
fi


# orcus-specific aliases
if [ $HOSTNAME = orcus ]; then
    # look for KDE Connect
    alias nczvn="netcat -z -v -n 192.168.50.119 1716"

    # pacman
    alias pms="sudo pacman -S"  # install from sync database
    alias pmsu="sudo pacman -Syu"  # upgrade
    alias pmss="pacman -Ss"  # search sync database
    alias pmsi="pacman -Sii"  # display info on sync package
    alias pmq="pacman -Q"  # query
    alias pmqs="pacman -Qs"  # search local package database
    alias pmqi="pacman -Qii"  # display info on a local package
    alias pmqqe="pacman -Qqe > ~/pkglist.txt"  # list to file all explicitly installed packages
    alias pmr="sudo pacman -R"  # remove package(s)

    # Backup the local package database.
    alias backup-pkg-db="tar cjf ~/pacman_database.tar.bz2 /var/lib/pacman/local"
fi



