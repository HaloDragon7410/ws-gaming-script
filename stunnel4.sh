apt install stunnel4 ca-certificates

wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/stunnel4 -O /etc/stunnel/stunnel4
wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/stunnel.conf -O /etc/stunnel/stunnel.conf

openssl req -new -out /etc/stunnel/vpn.pem -keyout /etc/stunnel/vpn.pem -nodes -x509 -days 365

systemctl enable stunnel4
systemctl start stunnel4
stunnel
echo "Done"
