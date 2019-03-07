

pipeline {
    agent {
        label 'khlaptop'
    }
    environment {
        PATH = "$HOME/.local/bin:$PATH"
    }
    stages {
        stage('Prepare') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: 'v0.21.0-rc2']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [[$class: 'SubmoduleOption',
                    disableSubmodules: false,
                    parentCredentials: false,
                    recursiveSubmodules: true,
                    reference: '',
                    trackingSubmodules: true]],
                    submoduleCfg: [],
                    userRemoteConfigs: [
                        [credentialsId: 'a79f63e1-d53b-4f8b-92c1-c146dc5ba242', url: 'https://github.com/hofschroeer/lc0.git']
                    ]
                ])
            }
        }
        stage('Build') {
            steps {
                sh """
                    PATH=$HOME/.local/bin:$PATH \
                    CC=clang-6.0 CXX=clang++-6.0 \
                    ./build.sh
                """
            }
        }
    }
}