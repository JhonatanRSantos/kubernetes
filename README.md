# Kubernetes (K8S)

### Basic commands

```bash
kubectl get namespaces
kubectl get pods
kubectl get services

kubectl exec -it <POD_NAME> -- <COMMAND>
kubectl exec -it gows -- sh

kubectl port-forward pod/<POD_NAME> HOST_PORT:CONTAINER_PORT
kubectl port-forward pod/gows 5000:80

kubectl delete pod <POD_NAME>
kubectl delete pod gows

kubectl get replicasets

kubectl describe pods <POD_NAME>
kubectl describe pods gows

kubectl get deployments

kubectl rollout history <OBJECT_TYPE> <OBJECT_NAME>
kubectl rollout history deployment gows

kubectl rollout undo <OBJECT_TYPE> <OBJECT_NAME>
kubectl rollout undo deployments gows 
kubectl rollout undo deployments gows --to-revision=<REVISION_ID>
```

Deployment -> ReplicaSet -> Pod