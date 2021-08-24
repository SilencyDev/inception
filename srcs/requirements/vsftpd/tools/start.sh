sleep 10
echo -e "${FTP_PASS}\n${FTP_PASS}\n" | adduser "${FTP_USER}"
mv ./vsftpd.conf /etc/vsftpd/vsftpd.conf
vsftpd /etc/vsftpd/vsftpd.conf