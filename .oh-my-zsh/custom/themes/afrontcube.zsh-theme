
PROMPT='$fg_bold[magenta]%${(l.$(afmagic_dashes).._.)} $reset_color%
$(prompt_segment magenta %{$fg_bold[gray]%}%c%{$fg_bold[blue]%}%{$fg_bold[magenta]% % %{$reset_color%}$(git_prompt_info) $(ruby_prompt_info)) $(prompt_end)'
# %{$fg[blue]%}➞  %{$reset_color%'

# RPROMPT='$(git_prompt_info) $(ruby_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[red]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}] %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_RUBY_PROMPT_SUFFIX="]%{$reset_color%}"

# separator dashes size
function afmagic_dashes {
	local PYTHON_ENV="$VIRTUAL_ENV"
	[[ -z "$PYTHON_ENV" ]] && PYTHON_ENV="$CONDA_DEFAULT_ENV"

	if [[ -n "$PYTHON_ENV" && "$PS1" = \(* ]]; then
		echo $(( COLUMNS - ${#PYTHON_ENV} - 3 ))
	else
		echo $COLUMNS
	fi
}

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
    echo -n "%{$bg%}%{$fg%} "
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
    echo -n "%{%k%}"
  echo -n "%{%f%}"
}

