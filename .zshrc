# If you come from bash you might have to change your $PATH. export 
# PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.4.0/bin
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.uiScale=1'

# --------- RACZ TERMINAL WELCOME --------------

ORANGE='\033[38;5;208m'
GREY='\033[38;5;250m'
RESET='\033[0m'
DARK_GREY='\033[38;5;242m\033[3m'

FRASES_ESTOICAS=(
    "you have power over your mind, not outside events - Marco Aurelio"
    "waste no more time arguing what a good man should be, be one - Marco Aurelio"
    "the impediment to action advances action, what stands in the way becomes the way - Marco Aurelio"
    "you could leave life right now, let that determine what you do and say and think - Marco Aurelio"
    "how much more grievous are the consequences of anger than the causes of it - Marco Aurelio"
    "it's not what happens to you, but how you react to it that matters - Epicteto"
    "no man is free who is not master of himself - Epicteto"
    "wealth consists not in having great possessions, but in having few wants - Epicteto"
    "first say to yourself what you would be, then do what you have to do - Epicteto"
    "he is a wise man who does not grieve for the things which he has not, but rejoices for those which he has - Epicteto"
    "we suffer more often in imagination than in reality - Séneca"
    "difficulties strengthen the mind as labor does the body - Séneca"
    "every new beginning comes from some other beginning's end - Séneca"
    "luck is what happens when preparation meets opportunity - Séneca"
    "if a man knows not to which port he sails, no wind is favorable - Séneca"
    "the whole future lies in uncertainty, live immediately - Séneca"
    "he who fears death will never do anything worthy of a man who is alive - Séneca"
    "man conquers the world by conquering himself - Zenón de Citio"
    "well-being is realized by small steps, but is truly no small thing - Zenón de Citio"
    "the soul becomes dyed with the color of its thoughts - Marco Aurelio"
)

HOUR=$(date +%H)
USER=$(whoami)
RAMDON_NUMBER=$(printf "%02d" $(( (RANDOM % 32) + 1 )))
PINGU_PATH="$HOME/Pictures/Pingu-Sequence/frame_0${RAMDON_NUMBER}.png"
WIDTH=45
CURRENT_LINE=9
FRASE_RANDOM="\"${FRASES_ESTOICAS[$((RANDOM % ${#FRASES_ESTOICAS[@]} + 1))]}\""
UPTIME=$(uptime -p | sed 's/up //')
LOCAL_IP=$(ip route get 1.1.1.1 | awk '{print $7; exit}')
RAM_INFO=$(free -h --si | awk '/^Mem:/ {print $3 " / " $2}')
PUBLIC_IP=$(curl -s -4 ifconfig.me)

if [ "$HOUR" -lt 12 ]; then
	GREETINGS="Good morning"
elif [ "$HOUR" -lt 19 ]; then
	GREETINGS="Good afternoon"
else
	GREETINGS="Good night"
fi

kitten icat --align left --place 25x10@0x0 $PINGU_PATH

tput cup 3 20
echo -e "${DARK_GREY}$(printf '─%.0s' {1..25})${RESET}"

tput cup 2 20
echo -e "${ORANGE}RACZ · ${GREY}${GREETINGS}, ${USER}${RESET}"

tput cup 4 20
echo -e "${GREY}uptime ${RESET}${UPTIME}"

tput cup 5 20
echo -e "${GREY}local ip ${RESET}${LOCAL_IP}"

tput cup 6 20
echo -e "${GREY}public id ${RESET}${PUBLIC_IP}"

tput cup 7 20
echo -e "${GREY}ram ${RESET}${RAM_INFO}"

tput cup 8 20
echo -e "${DARK_GREY}$(printf '─%.0s' {1..25})${RESET}"

tput cup 9 20
echo "$FRASE_RANDOM" | fold -s -w $WIDTH | while IFS= read -r linea; do
    tput cup $CURRENT_LINE 20
    echo -e "\033[38;5;242m\033[3m${linea}\033[0m"
    CURRENT_LINE=$((CURRENT_LINE + 1))
done

tput cup 12 0
