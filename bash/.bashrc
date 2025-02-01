# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# cd into directory merely by typing the directory name.
# shopt -s autocd

# aliases new place:
# [ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# colors for different filetypes
#LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.txt=37:*.py=93:*.sh=32:*.csv=102:*.png=92:*.gif=36:*.jpg=32:*.html=94:*.zip=4;33:*.tar.gz=4;33:*.mp4=92:*.mp3=33:*.c=92:*.jar=33:*.h=90:*.doc=104:*.docx=104:*.odt=104:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92'


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases new place:
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"


source /home/yura/.config/aliasrc_bash_colors

# autocompletion and syntax highlighting
source ~/ble.sh/out/ble.sh


git_prompt() {
    local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)"
    local branch_truncated="${branch:0:30}"
    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi

    [ -n "${branch}" ] && echo -e "${BWhite}on ${BGreen}${branch}"
}

folder_icon() {
    if [[ $PWD = $HOME ]]; then
        echo -e '\uf015'
    elif [[ $PWD = '/home/yura/Scripts' || $PWD = '/home/yura/Dev' ]]; then
        echo -e '\uf007'
    elif [[ $PWD = '/home/yura/Downloads' ]]; then
        echo -e '\uf019'
    # elif [[ $PWD = '/home/yura/Dev/python' || $PWD = '/home/yura/Dev/GUI/Guizero' ]]; then
        # echo -e '\uf3e2'
    elif [[ $PWD = '/home/yura/.bin' ]]; then
        echo -e '\uf121'
    elif [[ $PWD = '/home/yura/Music' ]]; then
        echo -e '\uf025'
    elif [[ $PWD = '/home/yura/.config' || $PWD = '/home/yura/.vim' ]]; then
        echo -e '\uf013'
    else
        echo -e '\uf07b'
    fi
}

caret-right() {
    echo -e ' \uf0da'
    # echo '>'
}

language_switcher(){
    lang_num=$(xset -q | grep "LED" | awk '{print $10}')
    [[ $lang_num == 00000000 ]] && echo "english" || echo "russian"
}

if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
else
    h=$(hostname)
    clear
	# source $HOME/.bin/ufetch
	neofetch
    echo -e "Welcome to ${Green}$USER's${Color_Off} space on ${Purple}$h${Color_Off} device!"
    echo -e "Current language is: ${Blue}$(language_switcher)${Color_Off}"
    echo ""
    # $PWD to full current directory without tilda
    PS1="\[${Yellow}\]\\[\$(date +%H:%M)\] \[${BBlue}\]\w \[${BBlue}\]\$(folder_icon) \$(git_prompt)";
    PS1+="\n";
    PS1+="\[${Cyan}\]\$(caret-right) \[${Color_Off}\]";
fi

export PS1;
echo -e '\e[5 q'
# Fzf settings
export FZF_DEFAULT_OPTS=" \
--pointer  \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--preview 'bat --color=always --style=plain {}' \
--bind K:preview-up,J:preview-down \
--prompt \"Search 🔍: \""

# Set vi mode
# set -o vi

# Exports
export EDITOR='nvim'
export VISUAL='nvim'
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export "MICRO_TRUECOLOR=1"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.bin/Notes:$PATH"
export PATH="$HOME/.bin/ffz:$PATH"
export PATH="$HOME/.bin:$PATH"

source ~/.profile

# z including
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
source ~/.local/share/blesh/ble.sh
source ~/.local/share/blesh/ble.sh

# Add this line at the end of .bashrc:
[[ ! ${BLE_VERSION-} ]] || ble-attach
