pipeline {
 agent {  label 'master' }
stages {
   stage('Build maven project with tests') {
      steps {
       withMaven(maven: 'maven') {
      script {
       sh """ mvn clean install """
       sh """  docker build -t demo ."""
       sh """  docker run -it demo ."""
      }}}}}}
