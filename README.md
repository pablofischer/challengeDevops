# challengeDevops

This project aims to create a Docker Image, which will be stored in Docker Hub and deployed by an AWS EC2 instance with Docker pre-installed;

You can trigger the Workflow by a push command or manually by GitHub Actions.

After running, you can find the instance IP in Actions > "Docker and AWS" (Workflow) > Deploying Docker (Job) > EC2 IP (Step)

Now to test if it's working, just open a Web Browser and put the <istante IP>:8080
