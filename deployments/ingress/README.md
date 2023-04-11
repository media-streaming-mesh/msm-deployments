# Nginx ingress deployment on MSM

This repository contains files necessary to deploy an nginx ingress for HLS (HTTP Live Streaming) on top of Media Streaming Mesh (MSM). 

The deployment consists of an nginx ingress that directs to /giles-study on port 80 to port 8888 of the giles-study-hls service.

The deployment is designed to run on a Kubernetes (K8S) and/or K3S cluster.

## Getting Started
To get started, clone this repository and navigate to the `camera` directory.

`git clone https://github.com/media-streaming-mesh/msm-deployments.git`

`cd msm-deployments/deployments/ingress`

The `camera` directory contains the following files and folders:



## Prerequisites

Before deploying the camera app using MSM, ensure that you have the following prerequisites:


## Deployment
To deploy the camera using MSM, follow these steps:

1. 
2.
3.

## Troubleshooting
If you encounter any issues with the camera deployment, check the logs of the camera and MSM node containers using the docker logs command:


If the issue persists, check the MSM documentation and issue tracker for solutions or report the issue to the MSM community.

## License
This repository is licensed under the Apache License, Version 2.0. See the LICENSE file for details.
