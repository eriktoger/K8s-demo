### Build docker file:

- docker build -f docker_frontend -t frontend-app .

### Run docker locally

- docker run -p 8082:80 frontend-app

### Apply

- kubectl apply -f frontend-service.yaml
- kubectl apply -f frontend-deployment.yaml

### Forward to port

- kubectl port-forward service/frontend-service 8082:80

### Restart

- kubectl rollout restart deployment/frontend-deployment
