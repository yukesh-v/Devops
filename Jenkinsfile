pipeline {
    agent any

    stages {
        stage('Running ansible playbook') {
            steps {
               scripts{
                   sh 'ansible-playbook install-docker-playbook.yml'
            }
        }
    }
}
