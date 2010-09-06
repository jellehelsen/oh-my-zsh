# Copied and modified from the oh-my-zsh theme from daveverwer
# Red server name, green cwd, blue git status

function bunlder_prompt_info {
  if [ -n "${BUNDLE_GEMFILE-}" ]; then
    project_path="${BUNDLE_GEMFILE%/Gemfile}"
    project_name="${project_path##**/}"

    if [ -n "${1-}" ]; then
      printf "$1" "${project_name}"
    else
      printf "(%s)" "${project_name}"
    fi
  else
    echo "%c"
  fi
}


PROMPT='%{$fg[red]%}%n@%m%{$reset_color%}:%{$fg[green]%}$(bunlder_prompt_info)%{$reset_color%}$(git_prompt_info) %(!.#.$) '
RPS1='%{$fg[yellow]%}rvm%{$reset_color%}:%{$fg[red]%}$(~/.rvm/bin/rvm-prompt v s g)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
