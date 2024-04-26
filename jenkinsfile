pipeline {
    agent {
        docker {
            image 'qaninja/rubywd'
        }
    }
    
    stages {
        stage('Build'){
            steps{
                echo 'Bilding resolve Dependencies'
                sh 'bundler install'
                
            }   
        }
        stage('Test'){
            steps {
                echo 'running testes regreção'
                sh 'cucumber -p ci'
                }
                post{
                    always{
                            cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            
                    }
                }
            }
        stage('UAT'){
            steps{
                echo 'tipo uat'
                input (message: 'Podemos subir para prod?', ok: 'Yes')
            }
            } 
        stage('Prod'){
            steps{
             echo 'Prod atualizado'   
            }
            }   
        
    }
}