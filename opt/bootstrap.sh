#!/bin/bash -e
AWS_DEFAULT_REGION="us-west-2"
DUO_INTEGRATION_KEY=`credstash get DUO_INTEGRATION_KEY`
DUO_SECRET_KEY=`credstash get DUO_SECRET_KEY`
DUO_API_HOSTNAME=`credstash get DUO_API_HOSTNAME`
sudo sed -i s:DUO_INTEGRATION_KEY:$DUO_INTEGRATION_KEY:g /etc/duo/login_duo.conf
sudo sed -i s:DUO_SECRET_KEY:$DUO_SECRET_KEY:g /etc/duo/login_duo.conf
sudo sed -i s:DUO_API_HOSTNAME:$DUO_API_HOSTNAME:g /etc/duo/login_duo.conf
sudo sed -i s:#ForceCommand:ForceCommand:g /etc/ssh/sshd_config
