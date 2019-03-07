

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
                    branches: [[name: 'master']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [[$class: 'SubmoduleOption',
                    disableSubmodules: false,
                    parentCredentials: false,
                    recursiveSubmodules: true,
                    reference: '',
                    trackingSubmodules: true]],
                    submoduleCfg: [],
                    userRemoteConfigs: [[url: 'git@github.com:hofschroeer/lc0.git']]
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