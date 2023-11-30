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
kubectl port-forward svc/<SERVICE_NAME>
kubectl port-forward pod/gows-svc 5000:80

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

kubectl proxy --port=8080

kubectl edit <RESOURCE>/<RESOURCE_NAME>

kubectl api-resources --namespaced=false
kubectl api-resources --namespaced=true

kubectl -n kube-system get all

 kubectl top pods --containers --sum -A
 kubectl -n default top pods --containers --sum
```

Deployment -> ReplicaSet -> Pod

kubectl run -it fortio --rm --image=fortio/fortio -- load -qps 80000 -t 120s -c 70 "http://<SERVICE_NAME>/health"