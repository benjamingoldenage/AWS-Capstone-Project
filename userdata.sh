#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/benjamingoldenage/my_aws-capstone-project
cd /home/ubuntu/my_aws-capstone-project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/my_aws-capstone-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80



eval "$(ssh-agent)" (your local)
ssh-add <pem-key>   (your local )
ssh -A ec2-user@<Public IP or DNS name of NAT instance> (your local)
ssh ubuntu@<Public IP or DNS name of private instance>  (NAT instance)