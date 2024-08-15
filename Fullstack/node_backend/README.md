### Install
- npm install

### Run
- node app.js


### Docker build 
- docker build -f Dockerfile_node -t node-backend-app .


### Find and run image
- docker image list
- docker run -p 8080:8080 node-backend-app

### Apply

- kubectl apply -f node-service.yaml
- kubectl apply -f node-deployment.yaml

### Restart

- kubectl rollout restart deployment/node-deployment

### Logs
- Find pods with: kubectl get pods
- kubectl logs -f node-deployment-\<hash>
