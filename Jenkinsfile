
@Library('jenkins-shared-library')_


pipeline {
    agent {
        kubernetes {
            label 'heroku-build-template'
            defaultContainer 'jnlp'
            yaml """
apiVersion: v1
kind: Pod
metadata:
  labels:
    some-label: some-label-value
spec:
  containers:
  - name: docker
    image: docker:18.06
    command: ["cat"]
    tty: true
    volumeMounts:
    - mountPath: /var/run/docker.sock
      name: docker-socket
  volumes:
  - name: docker-socket
    hostPath:
      path: /var/run/docker.sock
      type: Socket
        
"""
        }
    }
    stages {
        stage('build and push heroku image ') {
            steps {
                container('docker') {
                    
                    //sh 'docker version'
                    dockerLogin()
                    sh 'docker build -t stuartcbrown/heroku-cli:latest .'
                    sh 'docker push stuartcbrown/heroku-cli:latest'
                    
                    
                    //put stuff here 
                }
            }
        }
    }
}
