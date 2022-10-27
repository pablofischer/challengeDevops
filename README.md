# ChallengeDevops

# What`s the purpose of this repo/project?

This project was created for the purpose of learning the Docker, Terraform and GitHub Actions tools. It aims to create a Docker Image, which will be stored in Docker Hub and deployed by an AWS EC2 Instance with Docker pre-installed.


## Docker Image

The docker image was created to show a message in your Web Browser after deploying.

## How

You can trigger the **workflow**:
  * With a **git push** command through your code interpreter;
  * Manually by **GitHub Actions**.

## Workflows

We have two workflows:
* [docker-image.yml] - When a **push command** or a **manual GitHub Actions Workflow execution** are realized, it will:
  * Build and push a docker image directly on repo pablofischer/app-node;
  * Run Terraform in the /terraform folder, initializing an EC2 Instance with AWS credentials;
  * Deploy to EC2 Instance the Docker container stored in Docker hub;
  * Show instance IP as output.
  >To test if it's working, just open a Web Browser and put the (instance IP):8080 
* [destroy-infra.yml] - This one does exactly what you`re thinking. It will destroy all the infrasctrucure build previously.