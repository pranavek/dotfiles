if not set -q TMUX
    set -g TMUX tmux new-session -d -s "PЯᴎv"
    eval $TMUX
    tmux attach-session -d -t "PЯᴎv"
end
