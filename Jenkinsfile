
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
        stage('docker') {
            steps {
                container('docker') {
                    
                    sh 'docker version'
                    
                    //put stuff here 
                }
            }
        }
    }
}
