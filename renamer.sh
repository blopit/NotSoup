git filter-branch --env-filter '
    oldname="Shren Patel"
    oldemail="patel.shrenil@gmail.com"
    newname="Shren"
    newemail="patel.shrenil@gmail.com"
    [ "$GIT_AUTHOR_EMAIL" = "$oldemail" ] && GIT_AUTHOR_EMAIL="$newemail"
    [ "$GIT_COMMITTER_EMAIL" = "$oldemail" ] && GIT_COMMITTER_EMAIL="$newemail"
    [ "$GIT_AUTHOR_NAME" = "$oldname" ] && GIT_AUTHOR_NAME="$newname"
    [ "$GIT_COMMITTER_NAME" = "$oldname" ] && GIT_COMMITTER_NAME="$newname"
    ' HEAD