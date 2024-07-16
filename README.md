# DevOps-Engineer-Test-Task

## task 1: Docker

1. Build the Docker image:
   docker build -t maksim201281/hello-world .

2. Run the Docker container:
   docker run --rm maksim201281/hello-world

3. Push the Docker image to Docker Hub:
   docker login
   docker push maksim201281/hello-world

link: https://hub.docker.com/r/maksim201281/nodejs-hello-world

## task 2:CI/CD with GitHub Actions

1. GitHub Actions workflow file at .github/workflows/main.yml with the provided configuration.

2. Add your Docker Hub username and access token to the repository secrets as DOCKER_HUB_USERNAME and DOCKER_HUB_ACCESS_TOKEN.

## task 3: Helm and Terraform

1. Install Helm, Kubectl, Kind and Terraform on your local machine.

2. Initialize and apply the Terraform configuration:
   terraform.init
   terraform apply
3. For testing use port-forward:
   kubectl port-forward svc/nodejs-app-nodejs 8080:80
