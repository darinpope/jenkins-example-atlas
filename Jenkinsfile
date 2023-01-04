pipeline {
  agent any
  environment {
    MARIADB_CREDS=credentials('mariadb-creds')
  }
  stages {
    stage('verify atlas installation') {
      steps {
        sh 'atlas version'
      }
    }
    stage('apply schema.hcl') {
      steps {
        sh 'atlas schema apply --url "mariadb://$MARIADB_CREDS_USR:$MARIADB_CREDS_PSW@mariadb:3306/db1" --to file://schema.hcl --auto-approve'
      }
    }
    stage('inspect the database') {
      steps {
        sh 'atlas schema inspect --url "mariadb://$MARIADB_CREDS_USR:$MARIADB_CREDS_PSW@mariadb:3306/db1"'
      }
    }
  }
}