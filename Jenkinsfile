pipeline {
 agent {  label 'master' }
stages {
   stage('Build jar using maven') {
      steps {
       withMaven(maven: 'maven') {
      script {
       sh """ mvn clean install """
       sh """  docker build -t demo ."""
       sh """  docker run -it demo ."""
      }}}}
   stage('Build docker image') {
      steps {
       withMaven(maven: 'maven') {
      script {
       sh """  docker build -t demo ."""
      }}}}
}}
