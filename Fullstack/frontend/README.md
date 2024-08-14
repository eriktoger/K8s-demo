### Build docker file:

- docker build -f docker_frontend -t frontend-app .

### Run docker locally

- docker run -p 8082:80 frontend-app

### Apply

- kubectl apply -f frontend-service.yaml
- kubectl apply -f frontend-deployment.yaml

### Restart

- kubectl rollout restart deployment/frontend-deployment
