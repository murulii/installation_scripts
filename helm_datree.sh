# HELM INSTALL 

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

chmod 700 get_helm.sh

./get_helm.sh

# Datree.io Install 

curl https://get.datree.io | /bin/bash
datree version
datree test <your_kubernetes_manifest_YAML_NAME>



######jenkins code######

     stage('check misconfig') {
            steps {
                
                script{
                    
                    dir('kubernetes/myapp') {
                        withEnv(['DATREE_TOKEN=2299500f-7284-4362-b8fc-fb1df99caa3b']) {
                            
                        sh 'helm datree test .'
                                            }
                    }
                      }
                
                  }
                           }
        
        
       
        }

