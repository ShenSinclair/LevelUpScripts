#!/bin/bash

#This group will update the current operating system, install apache webserver with basic HTML landing page. 

#Step1: Update AMI operating system 

yum update -y

#Step2: Install Apache web server 

yum install -y httpd

#Step3: Start web server 

systemctl start httpd

#Step4: Configure web server to start when system boots

systemctl enable httpd

#HTML Page configuration

cd /var/www/html

echo '<html> Hello World! Welcome to Level Up In Tech- Gold Team July 2022 </html>' >> index.html

#END
