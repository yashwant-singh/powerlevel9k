if [ -f ~/.bashrc ]
then
        source ~/.bashrc
fi

export POWERLEVEL9K_INSTALLATION_DIR='/Users/ykumar4/apps/zsh/powerlevel9k'
source /Users/ykumar4/apps/zsh/powerlevel9k/powerlevel9k.zsh-theme
#source /Users/ykumar4/apps/zsh/powerlevel9k/prompt_powerlevel9k_setup
#POWERLEVEL9K_COLOR_SCHEME=light
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context date time dir vcs)
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context time battery dir vcs virtualenv custom_wifi_signal)

#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_TIME_FOREGROUND='red'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='red'
#POWERLEVEL9K_TIME_BACKGROUND='021'
#POWERLEVEL9K_TIME_BACKGROUND='blue'
#POWERLEVEL9K_COLOR_SCHEME='light'
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline vcs)
