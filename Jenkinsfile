pipeline {
   agent any
   tools {
       maven 'Maven3'
   
   }
   stages {
       stage('Checkout') {
           steps {
               git branch: 'main', url: 'https://github.com/Harishebsco/hello-maven.git'
           }
       }
       stage('Build') {
           steps {
               sh 'mvn clean compile'
           }
       }
   }
   post {
       success {
           echo "✅ Build successful!"
       }
       failure {
           echo "❌ Build failed."
       }
   }
}
