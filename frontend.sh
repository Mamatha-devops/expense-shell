#!bin/bash  
dnf install nginx -y  
systemctl enable nginx
systemctl start nginx
rm -rf /usr/share/nginx/html/* 
curl -o /tmp/frontend.zip https://expense-web-app.s3.amazonaws.com/frontend.zip
unzip /tmp/frontend.zip -d /usr/share/nginx/html
systemctl restart nginx