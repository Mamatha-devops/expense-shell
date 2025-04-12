#!bin/bash  
#set-hostname frontend
echo "installing nginx"
dnf install nginx -y  &>> /tmp/frontend.log
if [$? -eq 0]; then
  echo "Nginx installed successfully"
else
  echo "Nginx installation failed"
  exit 1
fi
echo "enabling nginx"
systemctl enable nginx &>> /tmp/frontend.log
if[ $? -eq 0]; then
  echo "Nginx enabled successfully"
else
  echo "Nginx enabling failed"
  exit 1
fi
echo "starting nginx"
systemctl start nginx &>> /tmp/frontend.log
if[ $? -eq 0]; then
  echo "Nginx started successfully"
else
  echo "Nginx starting failed"
  exit 1
fi
#rm -rf /usr/share/nginx/html/* 
#curl -o /tmp/frontend.zip https://expense-web-app.s3.amazonaws.com/frontend.zip
#unzip /tmp/frontend.zip -d /usr/share/nginx/html
#systemctl restart nginx
#systemctl restart nginx