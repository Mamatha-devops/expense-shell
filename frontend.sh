#!bin/bash  
#set-hostname frontend
dnf install nginx -y  &>> /tmp/frontend.log
systemctl enable nginx &>> /tmp/frontend.log
systemctl start nginx &>> /tmp/frontend.log
#rm -rf /usr/share/nginx/html/* 
#curl -o /tmp/frontend.zip https://expense-web-app.s3.amazonaws.com/frontend.zip
#unzip /tmp/frontend.zip -d /usr/share/nginx/html
# systemctl restart ngi
#systemctl restart nginx