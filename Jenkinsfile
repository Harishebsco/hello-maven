pipeline {
   agent any
   stages {
       stage('Checkout') {
           steps {
               git branch: 'main', url: 'https://github.com/Harishebsco/hello-maven.git'
           }
       }
       stage('Echo') {
           steps {
               echo "✅ Checked out successfully!"
           }
       }
   }
}
 
