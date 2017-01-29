program="`tmux display -p '#{pane_current_command}'`"

# use xclip to get the clipboard contents and load into the tmux buffer
xclip -o -selection clipboard | tmux load-buffer -
if [[ $program == "vim" ]]; then
    # if vim is focused, send the keys so it will handle the paste itself
    tmux send-keys 'M-p'
else
    # paste as normal terminal input into the current pane
    tmux paste-buffer
fi
