mkdir FinalProjectRepository
cd FinalProjectRepository
git init
cp -a /Library/WebServer/Documents/.  .
git add -A
git commit -m "first automated git commit"
curl -u "vanr0052" https://api.github.com/user/repos -d '{"name":"FinalProjectRepository", "private":true}'
git remote add origin https://github.com/vanr0052/FinalProjectRepository.git
git push -u origin master
ssh joseph@52.147.208.158 <<'ENDSSH'
git clone "git@github.com:vanr0052/FinalProjectRepository.git"
rm -rf .git
sudo cp -r ~/FinalProjectRepository/* /var/www/html
sudo nginx -s reload
exit
ENDSSH
open -a Firefox http://vanr0052.hopto.org/
/Users/joe/Library/Android/sdk/emulator/emulator -avd Nexus_10_API_25 &
cd /Users/joe/Library/Android/sdk/platform-tools
./adb shell am start -a android.intent.action.VIEW -d 'http://vanr0052.hopto.org/'
echo "FROM ubuntu:latest
RUN apt update && apt install -y nginx && apt install unzip
COPY Archive.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip Archive.zip
CMD [\"/usr/sbin/nginx\", \"-g\" , \"daemon off;\"]
EXPOSE 80">> Dockerfile
docker build . -t finalproject:v1
docker run -p 1234:80 finalproject:v1
xcrun simctl boot 3312C8D4-81B4-4BD7-9F1F-5519F9D2A338
open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
xcrun simctl openurl booted "http://localhost:1234"