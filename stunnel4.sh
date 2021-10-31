apt install stunnel4

wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/stunnel4 -O /etc/stunnel/stunnel4
wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/stunnel.conf -O /etc/stunnel/stunnel.conf

systemctl enable stunnel4
systemctl start stunnel4
stunnel
echo "Done"
