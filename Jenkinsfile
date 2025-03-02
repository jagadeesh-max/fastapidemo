@Library('shared')
pipeline{
    agent any
    stages{
        stage("from shared lib"){
            steps{
                script{
                    echo "this is getting started"
                    hello()
                }

            }
        }
    }
}
