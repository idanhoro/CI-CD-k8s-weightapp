# K8s deploy 
<img src="./images/k8s.gif" width="100"/>

Deployment using k8s.

`azure-pipelines.yml` is pipeline that following those steps:

#### CI

* Build and push image to Azure Container Registry
* Upload `k8s` directory

Yaml files to create resources is stored at `k8s` directory.

#### CD

`azure-pipelines.yml` is pipeline that deploy using  `kubernetes-cd-template.yaml` follow those steps:

* Create secret file for application
* Create secret file for Database
* Deploy database to the cluster
* Wait for database 25 seconds to be fully deployed.
* Deploy service and ingress to the cluster
* Wait for service and ingress 5 seconds to be fully deployed
* Deploy the application the to the cluster
