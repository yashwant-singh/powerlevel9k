# vim:ft=zsh ts=2 sw=2 sts=2
################################################################
# powerlevel9k Theme
# https://github.com/bhilburn/powerlevel9k
#
# This theme was inspired by agnoster's Theme:
# https://gist.github.com/3712874
#
# The `vcs_info` hooks in this file are from Tom Upton:
# https://github.com/tupton/dotfiles/blob/master/zsh/zshrc
################################################################

################################################################
# Please see the README file located in the source repository for full docs.
# What follows is a brief list of the settings variables used by this theme.
# You should define these variables in your `~/.zshrc`.
#
# Customize which segments appear in which prompts (below is also the default):
#   POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
#   POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
#
# Set your Amazon Web Services profile for the `aws` segment:
#   export AWS_DEFAULT_PROFILE=<profile_name>
#
# Set your username for the `context` segment:
#   export DEFAULT_USER=<your username>
#
# Customize the format of the time segment. Example of reverse format:
#   POWERLEVEL9K_TIME_FORMAT='%D{%S:%M:%H}' 
#
# Show the hash/changeset string in the `vcs` segment:
#   POWERLEVEL9K_SHOW_CHANGESET=true
# Set the length of the hash/changeset if enabled in the `vcs` segment:
#   POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
#
# Make powerlevel9k a double-lined prompt:
#   POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#
# Set the colorscheme:
#   POWERLEVEL9K_COLOR_SCHEME='light'
################################################################

# The `CURRENT_BG` variable is used to remember what the last BG color used was
# when building the left-hand prompt. Because the RPROMPT is created from
# right-left but reads the opposite, this isn't necessary for the other side.
CURRENT_BG='NONE'

# These characters require the Powerline fonts to work properly. If see boxes or
# bizarre characters below, your fonts are not correctly installed. In case you
# do not want to install a special font, you can set `POWERLEVEL9K_MODE` to
# `compatible`. This shows all icons in regular symbols.
case $POWERLEVEL9K_MODE in
  'flat')
    LEFT_SEGMENT_SEPARATOR=''
    RIGHT_SEGMENT_SEPARATOR=''
    ROOT_ICON="\uE801" # 
    RUBY_ICON="\uE847" # 
    AWS_ICON="\uE895" # 
    BACKGROUND_JOBS_ICON="\uE82F " # 
    TEST_ICON="\uE891" # 
		OK_ICON="\u2713" # ✓
		FAIL_ICON="\u2718" # ✘
    VCS_UNSTAGED_ICON="\uE16C" # 
    VCS_STAGED_ICON="\uE168" # 
    VCS_STASH_ICON="\uE133 " # 
    #VCS_INCOMING_CHANGES="\uE1EB " # 
    VCS_INCOMING_CHANGES="\uE80D " # 
    #VCS_OUTGOING_CHANGES="\uE1EC " # 
    VCS_OUTGOING_CHANGES="\uE80E " # 
    VCS_TAG_ICON="\uE817 " # 
    VCS_BOOKMARK_ICON="\uE87B" # 
    VCS_COMMIT_ICON="\uE821 " # 
    VCS_BRANCH_ICON=" \uE220" # 
    VCS_REMOTE_BRANCH_ICON="\uE804" # 
    VCS_GIT_ICON="\uE20E" # 
    VCS_HG_ICON="\uE1C3" # 
  ;;
  'compatible')
    LEFT_SEGMENT_SEPARATOR="\u2B80" # ⮀
    RIGHT_SEGMENT_SEPARATOR="\u2B82" # ⮂
    ROOT_ICON='*R*'
    RUBY_ICON=''
    AWS_ICON="AWS:"
    BACKGROUND_JOBS_ICON="\u2699" # ⚙
    TEST_ICON=''
		OK_ICON=''
		FAIL_ICON='x'
    VCS_UNSTAGED_ICON="\u25CF" # ●
    VCS_STAGED_ICON="\u271A" # ✚
    VCS_INCOMING_CHANGES="\u2193" # ↓
    VCS_OUTGOING_CHANGES="\u2191" # ↑
    VCS_TAG_ICON=''
    VCS_BOOKMARK_ICON=''
    VCS_COMMIT_ICON=''
    VCS_BRANCH_ICON='@'
    VCS_REMOTE_BRANCH_ICON="\u2192" # →
    VCS_GIT_ICON='Git'
    VCS_HG_ICON='HG'
  ;;
  'awesome-patched')
    # Awesome-Patched Font required! See https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
    LEFT_SEGMENT_SEPARATOR="\uE0B0" # 
    RIGHT_SEGMENT_SEPARATOR="\uE0B2" # 
    ROOT_ICON="\u26A1" # ⚡
    RUBY_ICON="\uE847" # 
    AWS_ICON="\uE895" # 
    BACKGROUND_JOBS_ICON="\uE82F " # 
    TEST_ICON="\uE891" # 
		OK_ICON="\u2713" # ✓
		FAIL_ICON="\u2718" # ✘
    VCS_UNSTAGED_ICON="\uE16C" # 
    VCS_STAGED_ICON="\uE168" # 
    VCS_STASH_ICON="\uE133 " # 
    #VCS_INCOMING_CHANGES="\uE1EB " # 
    VCS_INCOMING_CHANGES="\uE80D " # 
    #VCS_OUTGOING_CHANGES="\uE1EC " # 
    VCS_OUTGOING_CHANGES="\uE80E " # 
    VCS_TAG_ICON="\uE817 " # 
    VCS_BOOKMARK_ICON="\uE87B" # 
    VCS_COMMIT_ICON="\uE821 " # 
    VCS_BRANCH_ICON=" \uE220" # 
    VCS_REMOTE_BRANCH_ICON="\uE804" # 
    VCS_GIT_ICON="\uE20E" # 
    VCS_HG_ICON="\uE1C3" # 
  ;;
  *)
    # Powerline-Patched Font required! See https://github.com/Lokaltog/powerline-fonts
    LEFT_SEGMENT_SEPARATOR="\uE0B0" # 
    RIGHT_SEGMENT_SEPARATOR="\uE0B2" # 
    ROOT_ICON="\u26A1" # ⚡
    RUBY_ICON=''
    AWS_ICON="AWS:"
    BACKGROUND_JOBS_ICON="\u2699" # ⚙
    TEST_ICON=''
		OK_ICON="\u2713" # ✓
		FAIL_ICON="\u2718" # ✘
    VCS_UNSTAGED_ICON="\u25CF" # ●
    VCS_STAGED_ICON="\u271A" # ✚
    VCS_STASH_ICON="\u235F" # ⍟
    VCS_INCOMING_CHANGES="\u2193" # ↓
    VCS_OUTGOING_CHANGES="\u2191" # ↑
    VCS_TAG_ICON=''
    VCS_BOOKMARK_ICON="\u263F" # ☿
    VCS_COMMIT_ICON=''
    VCS_BRANCH_ICON='@'
    VCS_REMOTE_BRANCH_ICON="\u2192" # →
    VCS_GIT_ICON="\uE0A0" # 
    VCS_HG_ICON="\uE0A0" # 
  ;;
esac

################################################################
# color scheme
################################################################

local DEFAULT_COLOR DEFAULT_COLOR_INVERTED DEFAULT_COLOR_DARK
if [[ $POWERLEVEL9K_COLOR_SCHEME == "light" ]]; then
  DEFAULT_COLOR=white
  DEFAULT_COLOR_INVERTED=black
  DEFAULT_COLOR_DARK="252"
else
  DEFAULT_COLOR=black
  DEFAULT_COLOR_INVERTED=white
  DEFAULT_COLOR_DARK="236"
fi

################################################################
# VCS Information Settings
################################################################

setopt prompt_subst
autoload -Uz vcs_info

local VCS_WORKDIR_DIRTY=false
local VCS_CHANGESET_PREFIX=''
if [[ "$POWERLEVEL9K_SHOW_CHANGESET" == true ]]; then
  # Default: Just display the first 12 characters of our changeset-ID.
  local VCS_CHANGESET_HASH_LENGTH=12
  if [[ -n $POWERLEVEL9K_CHANGESET_HASH_LENGTH ]]; then
    VCS_CHANGESET_HASH_LENGTH=$POWERLEVEL9K_CHANGESET_HASH_LENGTH
  fi

  VCS_CHANGESET_PREFIX="%F{$DEFAULT_COLOR_DARK}$VCS_COMMIT_ICON%0.$VCS_CHANGESET_HASH_LENGTH""i%f"
fi

zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:*' check-for-changes true

local VCS_DEFAULT_FORMAT="$VCS_CHANGESET_PREFIX%F{$DEFAULT_COLOR}%b%c%u%m%f"
zstyle ':vcs_info:git:*' formats "%F{$DEFAULT_COLOR}$VCS_GIT_ICON%f $VCS_DEFAULT_FORMAT" 
zstyle ':vcs_info:hg:*' formats "%F{$DEFAULT_COLOR}$VCS_HG_ICON%f $VCS_DEFAULT_FORMAT" 

zstyle ':vcs_info:*' actionformats " %b %F{red}| %a%f"

zstyle ':vcs_info:*' stagedstr " %F{$DEFAULT_COLOR}$VCS_STAGED_ICON%f"
zstyle ':vcs_info:*' unstagedstr " %F{$DEFAULT_COLOR}$VCS_UNSTAGED_ICON%f"

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked git-aheadbehind git-stash git-remotebranch git-tagname

# For Hg, only show the branch name
zstyle ':vcs_info:hg*:*' branchformat "$VCS_BRANCH_ICON%b"
# The `get-revision` function must be turned on for dirty-check to work for Hg
zstyle ':vcs_info:hg*:*' get-revision true
zstyle ':vcs_info:hg*:*' get-bookmarks true
zstyle ':vcs_info:hg*+gen-hg-bookmark-string:*' hooks hg-bookmarks

if [[ "$POWERLEVEL9K_SHOW_CHANGESET" == true ]]; then
  zstyle ':vcs_info:*' get-revision true
else
  # A little performance-boost for large repositories (especially Hg). If we
  # don't show the changeset, we can switch to simple mode.
  zstyle ':vcs_info:*' use-simple true
fi

## Debugging
#zstyle ':vcs_info:*+*:*' debug true

################################################################
# Prompt Segment Constructors
################################################################

# Begin a left prompt segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
left_prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n "%{$bg%F{$CURRENT_BG}%}$LEFT_SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the left prompt, closing any open segments
left_prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$LEFT_SEGMENT_SEPARATOR"
  else
    echo -n " %{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

# Begin a right prompt segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground. No ending for the right prompt
# segment is needed (unlike the left prompt, above).
right_prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
    echo -n " %f%F{$1}$RIGHT_SEGMENT_SEPARATOR%f%{$bg%}%{$fg%} "
  [[ -n $3 ]] && echo -n $3
}

################################################################
# The 'vcs' Segment and VCS_INFO hooks / helper functions
################################################################
prompt_vcs() {
  local vcs_prompt="${vcs_info_msg_0_}"

  if [[ -n $vcs_prompt ]]; then
    if [[ "$VCS_WORKDIR_DIRTY" == true ]]; then
      $1_prompt_segment yellow $DEFAULT_COLOR
    else
      $1_prompt_segment green $DEFAULT_COLOR
    fi

    echo -n "%F{$DEFAULT_COLOR}%f$vcs_prompt"
  fi
}

function +vi-git-aheadbehind() {
    local ahead behind branch_name
    local -a gitstatus

    branch_name=${$(git symbolic-ref --short HEAD 2>/dev/null)}

    # for git prior to 1.7
    # ahead=$(git rev-list origin/${branch_name}..HEAD | wc -l)
    ahead=$(git rev-list ${branch_name}@{upstream}..HEAD 2>/dev/null | wc -l | tr -d ' ')
    (( $ahead )) && gitstatus+=( " %F{$DEFAULT_COLOR}$VCS_OUTGOING_CHANGES${ahead// /}%f" )

    # for git prior to 1.7
    # behind=$(git rev-list HEAD..origin/${branch_name} | wc -l)
    behind=$(git rev-list HEAD..${branch_name}@{upstream} 2>/dev/null | wc -l | tr -d ' ')
    (( $behind )) && gitstatus+=( " %F{$DEFAULT_COLOR}$VCS_INCOMING_CHANGES${behind// /}%f" )

    hook_com[misc]+=${(j::)gitstatus}
}

function +vi-git-remotebranch() {
    local remote branch_name

    # Are we on a remote-tracking branch?
    remote=${$(git rev-parse --verify HEAD@{upstream} --symbolic-full-name 2>/dev/null)/refs\/(remotes|heads)\/}
    branch_name=${$(git symbolic-ref --short HEAD 2>/dev/null)}

    hook_com[branch]="%F{$DEFAULT_COLOR}$VCS_BRANCH_ICON${hook_com[branch]}%f"
    # Always show the remote
    #if [[ -n ${remote} ]] ; then
    # Only show the remote if it differs from the local
    if [[ -n ${remote} && ${remote#*/} != ${branch_name} ]] ; then
        hook_com[branch]+="%F{$DEFAULT_COLOR}$VCS_REMOTE_BRANCH_ICON%f%F{$DEFAULT_COLOR}${remote// /}%f"
    fi
}

function +vi-git-tagname() {
    local tag

    tag=$(git describe --tags --exact-match HEAD 2>/dev/null)
    [[ -n ${tag} ]] && hook_com[branch]=" %F{$DEFAULT_COLOR}$VCS_TAG_ICON${tag}%f"
}

# Show count of stashed changes
# Port from https://github.com/whiteinge/dotfiles/blob/5dfd08d30f7f2749cfc60bc55564c6ea239624d9/.zsh_shouse_prompt#L268
function +vi-git-stash() {
  local -a stashes

  if [[ -s $(git rev-parse --git-dir)/refs/stash ]] ; then
    stashes=$(git stash list 2>/dev/null | wc -l)
    hook_com[misc]+=" %F{$DEFAULT_COLOR}$VCS_STASH_ICON${stashes// /}%f"
  fi
}

function +vi-hg-bookmarks() {
  if [[ -n "${hgbmarks[@]}" ]]; then
    hook_com[hg-bookmark-string]=" $VCS_BOOKMARK_ICON ${hgbmarks[@]}"

    # And to signal, that we want to use the sting we just generated,
    # set the special variable `ret' to something other than the default
    # zero:
    ret=1
    return 0
  fi
}

function +vi-vcs-detect-changes() {
  if [[ -n ${hook_com[staged]} ]] || [[ -n ${hook_com[unstaged]} ]]; then
    VCS_WORKDIR_DIRTY=true
  else
    VCS_WORKDIR_DIRTY=false
  fi
}

################################################################
# Prompt Segments
################################################################

# AWS Profile
prompt_aws() {
  local aws_profile=$AWS_DEFAULT_PROFILE
  if [[ -n $aws_profile ]]; 
  then
    $1_prompt_segment red white "$AWS_ICON $aws_profile"
  fi
}

# Context: user@hostname (who am I and where am I)
# Note that if $DEFAULT_USER is not set, this prompt segment will always print
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    $1_prompt_segment $DEFAULT_COLOR "011" "%(!.%{%F{yellow}%}.)$USER@%m"
  fi
}

# Dir: current working directory
prompt_dir() {
  $1_prompt_segment blue $DEFAULT_COLOR '%~'
}

# Command number (in local history)
prompt_history() {
  $1_prompt_segment "244" $DEFAULT_COLOR '%h'
}

# Right Status: (return code, root status, background jobs)
# This creates a status segment for the *right* prompt. Exact same thing as
# above - just other side.
prompt_longstatus() {
  local symbols bg
  symbols=()

  if [[ $RETVAL -ne 0 ]]; then
    symbols+="%{%F{"226"}%}%? ↵"
    bg="009"
  else
    symbols+="%{%F{"046"}%}$OK_ICON"
    bg="008"
  fi

  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%} $ROOT_ICON"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}$BACKGROUND_JOBS_ICON"

  [[ -n "$symbols" ]] && $1_prompt_segment $bg $DEFAULT_COLOR "$symbols"
}

# rbenv information
prompt_rbenv() {
  if [[ -n "$RBENV_VERSION" ]]; then
    $1_prompt_segment red $DEFAULT_COLOR "$RBENV_VERSION"
  fi
}

# RSpec test ratio
prompt_rspec_stats() {
  if [[ (-d app && -d spec) ]]; then
    local code_amount=$(ls -1 app/**/*.rb | wc -l)
    local tests_amount=$(ls -1 spec/**/*.rb | wc -l)

    build_test_stats $1 $code_amount $tests_amount "RSpec $TEST_ICON"
  fi
}

# Ruby Version Manager information
prompt_rvm() {
  local rvm_prompt
  rvm_prompt=`rvm-prompt`
  if [ "$rvm_prompt" != "" ]; then
    $1_prompt_segment "240" $DEFAULT_COLOR "$rvm_prompt $RUBY_ICON "
  fi
}

# Left Status: (return code, root status, background jobs)
# This creates a status segment for the *left* prompt
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}$FAIL_ICON"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%} $ROOT_ICON"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}$BACKGROUND_JOBS_ICON"

  [[ -n "$symbols" ]] && $1_prompt_segment $DEFAULT_COLOR default "$symbols"
}

# Symfony2-PHPUnit test ratio
prompt_symfony2_tests() {
  if [[ (-d src && -d app && -f app/AppKernel.php) ]]; then
    local code_amount=$(ls -1 src/**/*.php | grep -v Tests | wc -l)
    local tests_amount=$(ls -1 src/**/*.php | grep Tests | wc -l)

    build_test_stats $1 $code_amount $tests_amount "SF2 $TEST_ICON"
  fi
}

# Show a ratio of tests vs code
build_test_stats() {
  local code_amount=$2
  local tests_amount=$3+0.00001
  local headline=$4

  # Set float precision to 2 digits:
  typeset -F 2 ratio
  local ratio=$(( (tests_amount/code_amount) * 100 ))

  [[ ratio -ge 0.75 ]] && $1_prompt_segment cyan $DEFAULT_COLOR "$headline: $ratio%%"
  [[ ratio -ge 0.5 && ratio -lt 0.75 ]] && $1_prompt_segment yellow $DEFAULT_COLOR "$headline: $ratio%%"
  [[ ratio -lt 0.5 ]] && $1_prompt_segment red $DEFAULT_COLOR "$headline: $ratio%%"
}

# System time
prompt_time() {
  local time_format='%D{%H:%M:%S}'
  if [[ -n $POWERLEVEL9K_TIME_FORMAT ]]; then
    time_format=$POWERLEVEL9K_TIME_FORMAT
  fi

  $1_prompt_segment $DEFAULT_COLOR_INVERTED $DEFAULT_COLOR "$time_format "
}

# Virtualenv: current working virtualenv
# More information on virtualenv (Python):
# https://virtualenv.pypa.io/en/latest/
prompt_virtualenv() {
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    $1_prompt_segment blue $DEFAULT_COLOR "(`basename $virtualenv_path`)"
  fi
}

################################################################
# Prompt processing and drawing
################################################################

# Main prompt
build_left_prompt() {
  if [[ ${#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS} == 0 ]]; then
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
  fi

  for element in $POWERLEVEL9K_LEFT_PROMPT_ELEMENTS; do
    prompt_$element "left"
  done

  left_prompt_end
}

# Right prompt
build_right_prompt() {
  RETVAL=$?

  if [[ ${#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS} == 0 ]]; then
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(longstatus history time)
  fi

  for element in $POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS; do
    prompt_$element "right"
  done
}

precmd() {
  vcs_info

  # Add a static hook to examine staged/unstaged changes.
  vcs_info_hookadd set-message vcs-detect-changes
}

if [[ "$POWERLEVEL9K_PROMPT_ON_NEWLINE" == true ]]; then
  PROMPT='╭─%{%f%b%k%}$(build_left_prompt) 
╰─ '
else
  PROMPT='%{%f%b%k%}$(build_left_prompt) '
fi
RPROMPT='%{%f%b%k%}$(build_right_prompt)%{$reset_color%}'