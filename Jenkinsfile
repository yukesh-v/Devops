pipeline {
    agent any
    stage('Identify User') {
            steps {
                sh 'whoami' // Finds the user running the command
            }
        }
    stages {
        stage('Running ansible playbook') {
            steps {
               script{
                   sh 'ansible-playbook install-docker-playbook.yml'
            }
            }
        }
    }
}
