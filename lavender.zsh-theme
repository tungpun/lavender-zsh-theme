#!/usr/bin/env zsh

# ------------------------------------------------------------------------------
#
# Lavender Terminal Theme
#
# https://github.com/tungpun/lavender-zsh-theme
#
# ------------------------------------------------------------------------------

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{10}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%f%F{11}..."
ZSH_THEME_GIT_PROMPT_CLEAN=""

lavender_get_welcome_symbol() {

	echo -n "%(?..%F{1})"
	
	local welcome_symbol='$'
	[ $EUID -ne 0 ] || welcome_symbol='#'
	
	echo -n $welcome_symbol
	echo -n "%(?..%f)"
}

lavender_get_current_branch() {

	local branch=$(git_current_branch)
	
	if [ -n "$branch" ]; then
		echo -n $ZSH_THEME_GIT_PROMPT_PREFIX
		echo -n $(parse_git_dirty)
		echo -n "‹${branch}›"
		echo -n $ZSH_THEME_GIT_PROMPT_SUFFIX
	fi
}

function get_time_stamp {
    echo "%*"
}

lavender_get_prompt() {

	# 256-colors check (will be used later): tput colors
	local user="%F{6}%n%f"
	local at="%F{8}@%f"
	local host="%F{12}%m%f"
	local in="%F{8}:%f"
	local dir="%F{3}%~"
	local left_prompt="$user$at$host$in$dir$(lavender_get_current_branch)"

	echo -n "$left_prompt"
	echo -n "\n"
	echo -n "$(lavender_get_welcome_symbol)%{$reset_color%} " # $ or #
}

export GREP_COLOR='1;31'

PROMPT='$(lavender_get_prompt)'

local time="$(get_time_stamp)"
RPROMPT='%F{12}[$time]%f'

LSCOLORS='exfxcxdxbxGxDxabagacad'
