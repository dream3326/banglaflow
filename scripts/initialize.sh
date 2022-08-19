git config --global user.name $GH_USR
git config --global user.email $GH_MAIL
git config --global credential.helper store
echo "https://$GH_USR:$GH_TOKEN@github.com" > ~/.git-credentials
