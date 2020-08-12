pipeline {
 agent {  label 'master' }
stages {
   stage('Build maven project with testss') {
      steps {
       withMaven(maven: 'maven') {
      script {
       sh """ mvn clean install """
      }}}}}}
