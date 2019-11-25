#! /bin/bash
su jenkins
cd /var/lib/jenkins
ssh-keygen -t rsa -N '' -C "Jenkins Agent SSH key" -f /var/lib/jenkins/.ssh/id_rsa
su root
cat /var/lib/jenkins/.ssh/id_rsa.pub >> /var/lib/jenkins/.ssh/authorized_keys
chmod 600 /var/lib/jenkins/.ssh/authorized_keys
chown -R jenkins:jenkins /var/lib/jenkins/
