if status is-interactive
    # ENV
    source ~/.profile
    export LG_CONFIG_FILE="/Users/lucas.nothnagel/.config/lazygit/config.yml"
    export EDITOR="nvim"

    # PATH
    fish_add_path /opt/homebrew/bin
    fish_add_path $HOME/.volta/bin
    fish_add_path /opt/homebrew/opt/mysql-client/bin

    # PROMPT
    starship init fish | source
    set fish_greeting

    # ALIAS
    alias j="just"
    alias nv="nvim"
    alias r="ranger"
    alias lg="lazygit"
    alias vpn="sudo openfortivpn vpn.hmmh.de:10443 -u lucas.nothnagel"
    
    alias glogit="git log --oneline ..origin/template"
    alias glognit="git log --oneline origin/template.."
    alias glognim="git log --oneline origin/master.."
    alias glogim="git log --oneline ..origin/master"
    alias glognid="git log --oneline origin/develop.."
    alias glogid="git log --oneline ..origin/develop"
    alias grauto="git rebase -i --autosquash origin/develop"
    alias grebase="git rebase -i origin/develop"
    alias short="nv ~/Documents/shortcuts.md"
    alias note="cd ~/notes && nv && cd -"
    
    alias archive="/usr/local/bin/archive"
    alias phpactor="/Users/lucas.nothnagel/.local/share/nvim/mason/bin/phpactor"
    alias phpactor-clean="phpactor index:clean all && phpactor cache:clear && phpactor index:build"
end
