parallel -u ::: 'lt --subdomain $LTD --port 8060' 'sudo bash cleanup.sh' 'git clone https://$GH_USR:$GH_TOKEN@github.com/$GH_USR/$GH_REPO rr && cd rr && sudo docker-compose up --build'
