<h1 align="center">RTSP Deployment on MSM</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
  <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">
    <img alt="License: Apache License, Version 2.0" src="https://img.shields.io/badge/License-Apache License, Version 2.0-yellow.svg" />
  </a>
</p>

This repository contains files necessary to deploy a rtsp server app on Media Streaming Mesh (MSM).

The deployment consists of a pods that reaches out to an RTSP stream (using RTSP over TCP).

The deployment can run on Kubernetes (K8S) and K3S.

## Getting Started

To get started, clone this repository and navigate to the ```rtsp``` directory.
```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
```
```sh
cd msm-deployments/deployments/rtsp
```

## Directory Structure

The ```rtsp``` directory contains the following files and folders:

📦rtsp<br>
 ┣ 📂gbear<br>
 ┃ ┗ 📜appmetadata.yaml<br>
 ┣ 📂templates<br>
 ┃ ┣ 📜_helpers.tpl<br>
 ┃ ┣ 📜deployment.yaml<br>
 ┃ ┗ 📜service.yaml<br>
 ┣ 📜.helmignore<br>
 ┣ 📜Chart.yaml<br>
 ┣ 📜README.md<br>
 ┗ 📜values.yaml<br>

## Prerequisites

Before deploying the ```rtsp``` app on the ```MSM``` node, ensure that you have the following prerequisites:

* You will need to have access to a ```Kubernetes cluster```.<br>
* [Helm](https://helm.sh) charts must be installed to use these charts. <br>
* Before deploying ```RTSP``` App, ensure <b>```MSM```App is deployed and running.<br><br>
**Follow the instructions for deploying ```MSM``` app by following its README in its folders.<br>**

## Install

```sh
helm install <YOUR_APP_NAME> rtsp/ --values rtsp/values.yaml
```

## Usage
Verify everything is in Running state on your Kubernetes Cluster 

```kubectl get pods -A```

You can test the stream using ```VLC player``` or ```ffplay```

```sh
rtsp://<YOUR_NODE_IP>/<YOUR_APP_NAME>
```

## Contributing

We welcome contributions to this repository. If you would like to contribute to this repository, please follow these guidelines:

* Fork the repository and make your changes on a new branch.

* Submit a pull request with your changes, and include a detailed description of the changes you made.

* Follow the repository's code style and formatting guidelines.

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

The MSM RTSP App/Deployments are under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

***
