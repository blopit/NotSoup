git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "Shren Patel" ];
        then
                GIT_COMMITTER_NAME="Shren";
                GIT_AUTHOR_NAME="Shren";
                GIT_COMMITTER_EMAIL="patel.shrenil@gmail.com";
                GIT_AUTHOR_EMAIL="patel.shrenil@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD