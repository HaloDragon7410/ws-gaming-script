apt install stunnel4

cp ./stunnel4 /etc/stunnel/stunnel4
cp ./stunnel.conf /etc/stunnel/stunnel.conf

systemctl enable stunnel
systemctl start stunnel
stunnel
echo "Done"
