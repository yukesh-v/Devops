pipeline {
    agent any

    stages {
        stage('Execute Ansible on Local Windows (via WSL)') {
            steps {
                // Use the 'bat' step to execute a Windows command
                bat '''
                wsl.exe ansible-playbook install-docker-playbook.yml --connection=local
                '''
                // --connection=local is often needed to explicitly tell Ansible
                // to execute the play on the local host (the WSL environment).
            }
        }
    }
}
