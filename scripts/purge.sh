# Requires GitHub CLI installed and authenticated.

export BRANCH="master"

gh auth login --with-token $GH_TOKEN

gh api repos/$GH_USR/$REPOP/actions/runs | jq -r '.workflow_runs[] | select(.head_branch == "master") | "\(.id)"' | xargs -n1 -I % gh api repos/$GH_USR/$REPOP/actions/runs/% -X DELETE > out.log 2> /dev/null
