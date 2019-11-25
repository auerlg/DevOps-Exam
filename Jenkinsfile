pipeline {
    agent none
    stages {

        stage('Shellcheck script') {
            agent { 
                label 'slave'
            }
            steps {
                sh 'shellcheck /var/lib/jenkins/workspace/DevOps-Exam/node.sh'
            }
        }

        stage('Running the script') {
            agent { 
                label 'slave'
            }
            steps {
                sh 'sudo chmod +x /var/lib/jenkins/workspace/DevOps-Exam/node.sh'
                sh ' /var/lib/jenkins/workspace/DevOps-Exam/node.sh'
            }
        }

        stage('test-node.js') {
            agent { 
                label 'slave'
            }
            steps { 
                sh 'curl 127.0.0.1:6543 | grep DevOps'
            }
        }
    }
}
    
