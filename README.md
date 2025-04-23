# Deploy-SpringBoot-REST-Helloworld-AWS-Kubernetes
Deploy Spring Boot REST HelloWorld application into AWS Kubernetes (EKS)


##  Create EKS Cluster with eksctl

```
eksctl create cluster --name ekscluster2 --nodegroup-name ekscluster-node-group  --node-type t2.micro --nodes 4 --nodes-min 4 --nodes-max 8 --managed --asg-access
```

## Deploy helloworld application into EKS cluster using YAML file

```
kubectl apply -f deployment.yaml
```

## Expose the helloworld REST service using YAML file 

```
kubectl apply -f service.yaml
```

## Test helloworld REST service 

# Find External IP 

```
kubectl get svc
```

# Access URL

```
http://<EXTERNAL-IP>/hello
```
