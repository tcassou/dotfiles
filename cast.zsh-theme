PROMPT=$'%{$fg_bold[magenta]%}%n%{$reset_color%}%{$fg[white]%}@%{$fg_bold[green]%}%m %{$fg_bold[blue]%}%D{%X} %{$reset_color%}[%{$fg_bold[yellow]%}%~%{$reset_color%}]$(git_prompt_info)%{$fg_bold[blue]%} $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%} (%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[white]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
