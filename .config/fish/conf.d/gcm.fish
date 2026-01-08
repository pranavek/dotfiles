function gcm -a type -a msg
    # Validate type
    switch $type
        case f
            set prefix "feat"
        case b
            set prefix "bugfix"
        case s
            set prefix "style"
        case '*'
            echo "Usage: gcm <f|b|s> <commit message>"
            return 1
    end

    # Get current branch name, silence git errors
    set branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if test $status -ne 0
        echo "Not a git repository or cannot get branch name"
        return 1
    end

    # Extract ticket like ABC-123 or GWCP-4567 from branch
    set ticket (string match -r -g '([A-Z]+-[0-9]+)' $branch)
    if test -z "$ticket"
        echo "Could not extract ticket from branch '$branch'"
        return 1
    end

    # Build commit message: feat: your message TICKET-NUMBER
    set full_msg "$prefix: $msg $ticket"

    echo "git commit -m \"$full_msg\""
    git commit -m "$full_msg"
end
