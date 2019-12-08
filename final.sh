mkdir FinalProjectRepository
cd FinalProjectRepository
git init
cp -a /Library/WebServer/Documents/.  .
git add -A
git commit -m "first automated git commit"
curl -u "vanr0052" https://api.github.com/user/repos -d '{"name":"FinalProjectRepository", "private":true}'
git remote add origin https://github.com/vanr0052/FinalProjectRepository.git
git push -u origin master
# ssh joseph@52.147.208.158 <<'ENDSSH'
# git clone https://github.com/vanr0052/FinalProjectRepository.git
# rm -rf .git
# sudo cp -r * /var/www/html
# sudo nginx -s reload
# exit
# ENDSSH
open -a Firefox http://vanr0052.hopto.org/
/Users/joe/Library/Android/sdk/emulator/emulator -avd Nexus_10_API_25 &
cd /Users/joe/Library/Android/sdk/platform-tools
./adb shell am start -a android.intent.action.VIEW -d 'http://vanr0052.hopto.org/'
