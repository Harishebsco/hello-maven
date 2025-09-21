pipeline {

    agent any

    tools {

        maven 'Maven3'   // Name of your Maven installation in Jenkins

        jdk 'JDK17'      // Name of your JDK installation

    }

    stages {

        stage('Checkout') {

            steps {

                // Clone the repo

                git branch: 'main', url: 'https://github.com/Harishebsco/hello-maven.git'

            }

        }

        stage('Build') {

            steps {

                // Run Maven build

                sh 'mvn clean package'

            }

        }

        stage('Test') {

            steps {

                // Publish JUnit test results

                junit '**/target/surefire-reports/*.xml'

            }

        }

    }

    post {

        success {

            // Archive the JAR

            archiveArtifacts artifacts: 'target/*.jar', fingerprint: true

            echo "✅ Build and archive successful!"

        }

        failure {

            echo "❌ Build failed."

        }

    }

}

 
