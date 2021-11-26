if not set -q TMUX
    set -g TMUX tmux new-session -d -s basecamp
    eval $TMUX
    tmux attach-session -d -t basecamp
end
