echo "::group::Removing NodeJS, NPM & NPX"
{
  sudo npm list -g --depth=0. 2>/dev/null | awk -F ' ' '{print $2}' | awk -F '@[0-9]' '{print $1}' | grep -v "^n$" | sudo xargs npm remove -g
  yes | sudo n uninstall
  parallel --use-cpus-instead-of-cores sudo rm -rf {} 2>/dev/null ::: /usr/local/lib/node_modules ::: /usr/local/n ::: /usr/local/bin/n /usr/local/bin/vercel /usr/local/bin/now
} &>/dev/null
echo "::endgroup::"
