<h1 align="center">Nginx ingress deployment on MSM</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
  <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">
    <img alt="License: Apache License, Version 2.0" src="https://img.shields.io/badge/License-Apache License, Version 2.0-yellow.svg" />
  </a>
</p>

This repository contains files necessary to deploy an nginx ingress for HLS (HTTP Live Streaming) on top of Media Streaming Mesh (MSM). 

The deployment consists of an nginx ingress that directs to /giles-study on port 80 to port 8888 of the giles-study-hls service.

The deployment can run on Kubernetes (K8S) and K3S.

## Getting Started

To get started, clone this repository and navigate to the ```ingress``` directory.
```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
```
```sh
cd msm-deployments/deployments/ingress
```

## Directory Structure

The ```ingress``` directory contains the following files and folders:

📦ingress<br>
 ┣ 📂gbear<br>
 ┃ ┗ 📜appmetadata.yaml<br>
 ┣ 📂templates<br>
 ┃ ┣ 📜_helpers.tpl<br>
 ┃ ┣ 📜clusterrole.yaml<br>
 ┃ ┣ 📜clusterrolebinding.yaml<br>
 ┃ ┣ 📜configmap.yaml<br>
 ┃ ┣ 📜daemonset.yaml<br>
 ┃ ┣ 📜ingress.yaml<br>
 ┃ ┣ 📜ingressclass.yaml<br>
 ┃ ┣ 📜job.yaml<br>
 ┃ ┣ 📜role.yaml<br>
 ┃ ┣ 📜rolebinding.yaml<br>
 ┃ ┣ 📜service.yaml<br>
 ┃ ┣ 📜serviceaccount.yaml<br>
 ┃ ┗ 📜validatingwebhookconfiguration.yaml<br>
 ┣ 📜Chart.yaml<br>
 ┣ 📜README.md<br>
 ┗ 📜values.yaml<br>

## Prerequisites

Before deploying the ```ingress``` app on the ```MSM``` node, ensure that you have the following prerequisites:

* You will need to have access to a ```Kubernetes cluster```.<br>
* [Helm](https://helm.sh) charts must be installed to use these charts. <br>
* Before deploying ```ingress``` App, ensure <b>```MSM```</b> App is deployed and running.<br><br>
**Follow the instructions for deploying ```MSM``` app by following its README in its folder.<br>**

## Install

```sh
helm install <YOUR_APP_NAME> ingress/ --values ingress/values.yaml
```

## Usage
Verify everything is in Running state on your Kubernetes Cluster 

```kubectl get pods -A```

or

```kubectl get all```

## Contributing

We welcome contributions to this repository. If you would like to contribute to this repository, please follow these guidelines:

* Fork the repository and make your changes on a new branch.

* Submit a pull request with your changes, and include a detailed description of the changes you made.

* Follow the repository's code style and formatting guidelines.

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

The MSM Ingress App/Deployments are under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

***
