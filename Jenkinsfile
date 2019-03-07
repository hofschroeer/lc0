

pipeline {
    agent {
        dockerfile {
            label 'has-docker'
            reuseNode true
        }
    }
    stages {
        stage('Build') {
            steps {
                sh """
                    CC=clang-6.0 CXX=clang++-6.0 \
                    ./build.sh
                """
            }
        }
    }
}