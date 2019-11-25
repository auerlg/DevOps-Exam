# DevOps-Exam

Make sure that VirtualBox and Vagrant installed on your Windows system. The lab environment provides you with an opportunity to play with Jenkins/pipelines. 
Usage: clone or download the repository to a new folder in your computer. 
Navigate to the root directory of the downloaded repo in a cmd/powershell and issue the "vagrant up" command. 
Vagrant should create 2 VM-s with the required dependencies installed for a master and a slave Jenkins node. 

To recreate the results achieved by the jenkins script:

Create a repository on github with the name "DevOps-Exam".
If you create a repository with a different name then please replace all occurencies of "DevOps-Exam" in the Jenkinsfile and the nodejs.service file before you issue the "vagrant up" command from a cli (cmd/powershell) in the project directory in Windows. 

Todos in Jenkins :
In the first run, to acces jenkins on the master vm you need the admin initial password.
To get this password ssh to the machine as (vagrant/vagrant) and "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
Go trough the additional setup tasks.

Create new item as pipeline (choose a name for your liking)
Set up the project as follows: 
Get a personal access token from github
Select Pipeline script from SCM in the Piplene definition settings
Add your repository URL endig with .git
Create a Github personal access token on https://github.com/settings/tokens
Set your credentials for access to github:
Add the created token with username and password=token text

Label your master node as master and set to only build here if direcly specified.

Add your slave VM label it as slave and set to only build here if direcly specified.
Please connect to the slave vm via ssh (vagrant/vagrant). To get the SSH key to connect the slave node to Jenkins ssh into the VM and "cat /var/lib/jenkins/.ssh/id_rsa".
Set the verifying strategy to non verifying.

Change a line in the readme and commit to the repo to trigger a new build.




Jenkinsfile 

Set Poll SCM to:"* * * * *"


