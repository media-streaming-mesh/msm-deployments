<h1 align="center">Live Camera Feed/Real-Time Video Deployment on MSM</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
  <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">
    <img alt="License: Apache License, Version 2.0" src="https://img.shields.io/badge/License-Apache License, Version 2.0-yellow.svg" />
  </a>
</p>

This repository contains files to deploy a camera app on Media Streaming Mesh (MSM).

The deployment consists of a pod that reaches out to an RTSP camera (using RTSP over TCP) and stores that video to a local RTSP/HLS server, plus K8s services for RTSP and HLS feeds and an ingress to reach the HLS feed.

The deployment can run on Kubernetes (K8S) and K3S.

## Getting Started

To get started, clone this repository and navigate to the ```camera``` directory.
```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
```
```sh
cd msm-deployments/deployments/camera
```

## Directory Structure

The ```camera``` directory contains the following files and folders:

📦camera<br>
 ┣ 📂gbear<br>
 ┃ ┗ 📜appmetadata.yaml<br>
 ┣ 📂templates<br>
 ┃ ┣ 📜_helpers.tpl<br>
 ┃ ┣ 📜deployment.yaml<br>
 ┃ ┣ 📜ingress.yaml<br>
 ┃ ┗ 📜service.yaml<br>
 ┣ 📜Chart.yaml<br>
 ┣ 📜README.md<br>
 ┗ 📜values.yaml<br>

## Prerequisites

Before deploying the ```camera``` app on the ```MSM``` node, ensure that you have the following prerequisites:

* You will need to have access to a ```Kubernetes cluster```.<br>
* [Helm](https://helm.sh) charts must be installed to use these charts. <br>
* Before deploying ```Camera``` App, ensure <b>```MSM```</b> and <b>```Ingress```</b> Apps are deployed and running.<br><br>
**Follow the instructions for deploying ```MSM``` and ```Ingress``` apps by following their README in their folders.<br>**

## Install

Before installing the camera app, change the values of the camera fields under values.yaml file as per your needs. <br>
e.g. <br>
```sh
camera:
  appName: <your_app_name>
  ingressName: <your_ingress_name>
  rtspName: <your_app_name>
  hlsName: <your_hls_service_name>
  rtspPort: 554
  hlsPort: 8888
  hlsUrl: "/<your_app_name>"
  cameraUrl: "rtsp://<cam_user>:<cam_pass>@<cam_public_IP>:<cam_port>/<stream_name>"
  serverUrl: "rtsp://0.0.0.0:554/<your_app_name>"
```

```sh
helm install <YOUR_APP_NAME> camera/ --values camera/values.yaml
```

## Usage
Verify everything is in Running state on your Kubernetes Cluster 

```kubectl get pods -A```

You can just go to 

```sh
http://<YOUR_NODE_IP>/<YOUR_APP_NAME>
```

## Contributing

We welcome contributions to this repository. If you would like to contribute to this repository, please follow these guidelines:

* Fork the repository and make your changes on a new branch.

* Submit a pull request with your changes, and include a detailed description of the changes you made.

* Follow the repository's code style and formatting guidelines.

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

The MSM Camera App/Deployments are under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

***
