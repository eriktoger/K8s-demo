### Build docker file:
- docker build -f docker_frontend -t frontend-app .

### Apply
- kubectl apply -f frontend-service.yaml
- kubectl apply -f frontend-deployment.yaml

### Restart
- kubectl rollout restart deployment/frontend-deployment