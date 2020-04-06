# ECS Web App Nginx Proxy

This repo is for a web app to be available online. You can build this locally and test using localhost. The deployment
process is using github actions to build, test, and deploy to AWS. The github actions yaml file is located in 
`.github/workflows` and will run when there is a git push.

After the build and test is complete the images will be pushed to ECR. The deploy step will grab the latest images and 
create new tasks in ECS to force an update.

The containers are a nginx container and a nginx reverse proxy container. Both have their own directories in the root 
of the repo and their own dockerfiles. You will need the username and password to access the website.

Below is how you can run this locally. You will need to have `docker-compose` installed on your computer.

## Setup

**Run locally**

There is a Makefile in this repo to make it easy to bring up the environment locally and bring it back down. The Makefile
 uses the local docker-compose yaml file instead of the main one since it does a build. The commands are: `make up` 
 `make down` `make nuke`. The`make nuke` brings down the containers and also removes the images. Then it
brings the environment back up.
