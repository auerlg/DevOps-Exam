#! /bin/bash
hostnamectl set-hostame jenkins-student-slave
systemctl enable --now firewalld
firewall-cmd --add-port=22/tcp --permanent
firewall-cmd --reload

yum install java-1.8.0-openjdk-devel -y
yum install git -y

yum -y install epel-release -y
yum install ShellCheck -y

curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y gcc c++ make install nodejs
node -v

npm install supervisor -g

useradd -d /var/lib/jenkins jenkins
echo jenkins | passwd "jenkins" --stdin
echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

mkdir -p /var/lib/jenkins/.ssh/
touch /var/lib/jenkins/.ssh/authorized_keys