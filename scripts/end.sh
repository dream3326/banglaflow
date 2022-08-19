git clone https://github.com/$GH_USR/$REPOP
cd $REPOP || exit 1
echo $TZ date) >> Records/LeechFlow.txt
git add Records/LeechFlow.txt
git commit -m "Workflow : add recorded loop to logs $TZ' date)"
git push -q https://$GH_TOKEN@github.com/$GH_USR/$REPOP HEAD:master
