#!/bin/sh
apt update && apt upgrade
apt install dropbear wget

# Dropbear
# Banner location is /etc/banner
echo "Configuring Dropbear"
touch /etc/banner
wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/dropbear -O /etc/default/
systemctl enable dropbear
systemctl start dropbear

# Websocket
echo "Configuring Websocket"
wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/ws-dropbear -O /usr/local/bin/ws-dropbear
wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/ws.service -O /etc/systemd/system/ws.service
sudo chmod +x /usr/local/bin/ws-dropbear
systemctl enable ws.service
systemctl start ws.service

# Gaming (BadVPN-UDPGW)
echo "Configuring BadVPN-UDPGW"
wget https://raw.githubusercontent.com/HaloDragon7410/ws-gaming-script/master/badvpn.service -O /etc/systemd/system/badvpn.service
wget -O /usr/bin/badvpn-udpgw "https://raw.githubusercontent.com/daybreakersx/premscript/master/badvpn-udpgw64"
sudo chmod +x /usr/bin/badvpn-udpgw
systemctl enable badvpn.service
systemctl start badvpn.service

echo "Done"
