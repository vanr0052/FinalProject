ssh joseph@52.147.208.158 <<'ENDSSH'
sudo apt-get update && apt-get upgrade
sudo shutdown -h now
ENDSSH
open -a Firefox http://vanr0052.hopto.org/