mkdir FinalProjectRepository
cd FinalProjectRepository
git init
cp -a /Library/WebServer/Documents/.  .
git add -A
git commit -m "first automated git commit"
curl -u "vanr0052" https://api.github.com/user/repos -d '{"name":"FinalProjectRepository", "private":true}'