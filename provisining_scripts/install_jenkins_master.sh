#! /bin/bash
systemctl enable --now firewalld
hostnamectl set-hostame jenkins-master
yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y

systemctl enable jenkins
systemctl start jenkins

firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload

yum install git -y
