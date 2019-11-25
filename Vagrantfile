
Vagrant.configure("2") do |config|
   
    config.vm.define "jenkins_master" do |jenkins_master|
      jenkins_master.vm.box = "geerlingguy/centos7"
      jenkins_master.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
      end
      jenkins_master.vm.network "private_network", ip: "192.168.56.123"
      jenkins_master.vm.provision "shell", path: "provisining_scripts/install_jenkins_master.sh"
    end
  
    config.vm.define "jenkins_student_slave" do |jenkins_student_slave|
      jenkins_student_slave.vm.box = "geerlingguy/centos7"
      jenkins_student_slave.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
      end
      jenkins_student_slave.vm.network "private_network", ip: "192.168.56.124"
      jenkins_student_slave.vm.provision "shell", path: "provisining_scripts/install_jenkins-slave.sh"
      jenkins_student_slave.vm.provision "shell", path: "other_scripts_and_files/ssh_key_slave.sh"
      
      jenkins_student_slave.vm.provision "file", source: "./other_scripts_and_files/nodejs.service", destination: "/tmp/nodejs.service"
      jenkins_student_slave.vm.provision "shell", inline: "cat /tmp/nodejs.service > /etc/systemd/system/nodejs.service"
    end

  end
  