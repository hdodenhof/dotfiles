# Based on blinks
# https://github.com/blinks

# This theme works with both the "dark" and "light" variants of the
# Solarized color schema.  Set the SOLARIZED_THEME variable to one of
# these two values to choose.  If you don't specify, we'll assume you're
# using the "dark" variant.

case ${SOLARIZED_THEME:-dark} in
    light) bkg=white;;
    *)     bkg=black;;
esac

ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%F{white}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%K{${bkg}}%F{white}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%(#.%{%K{${bkg}}%F{red}%}%n%{%F{blue}%}.%{%K{${bkg}}%F{blue}%}%n%{%F{blue}%})@%{%F{blue}%}%m%{%F{blue}%} %{%F{yellow}%K{${bkg}}%}%~%{%F{white}%}$(git_prompt_info)%E%{%f%k%b%}
$%{%f%k%b%} '

