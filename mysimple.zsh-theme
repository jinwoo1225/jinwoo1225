if [[ "$OSTYPE" == "darwin"* ]]; then
  MY_IP=$(ipconfig getifaddr en0 2>/dev/null || echo "localhost")
else
  MY_IP=$(hostname -I | awk '{print $1}')
fi
PROMPT='→ %F{green}%n@${MY_IP}%f $(git_prompt_info)
%F{blue}%~%f '

# git 표시 스타일
ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
