@Library('shared') _
pipeline{
    agent any
    stages{
        stage("from shared lib"){
            steps{
                script{
                    echo "this is second time i wanted to test this"
                    hello()
                }

            }
        }
    }
}
