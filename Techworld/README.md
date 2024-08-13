## Prerequisites
- Docker desktop (with kubernetes enabled)
- kubectl

## Commands
- kubectl apply -f mongo-config.yaml
- kubectl apply -f mongo-secret.yaml
- kubectl apply -f mongo.yaml
- kubectl apply -f webapp.yaml
- kubectl get all
- kubectl describe service webapp-service
- kubectl get pod
