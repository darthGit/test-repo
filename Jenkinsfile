pipeline{
    agent any

    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')
    }

    parameters {
        string defaultValue: 'this is default value', description: 'Default value for lesson namber', name: 'number', trim: true
        booleanParam 'run'
    }

    triggers {
        cron '* * * * *'
    }

    stages{
        stage("Build 8888"){
            steps{
                sh """
                    ./script.sh $number
                    echo "hostname for server is \${hostname}"
                """
            }
        }
        stage("deploy 111"){
            steps{
                sh "printenv"
            }
        }
        stage("conditiom") {
            when {
                expression { run == "true"}
            }
            steps {
                sh "echo 'condition was true'"
            }
        }
    }
}