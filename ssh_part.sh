ssh joseph@52.147.208.158 <<'ENDSSH'
git clone "git@github.com:vanr0052/FinalProjectRepository.git"
rm -rf .git
sudo cp -r * /var/www/html
sudo nginx -s reload
exit
ENDSSH