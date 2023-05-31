<h1 align="center">MSM App </h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
  <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">
    <img alt="License: Apache License, Version 2.0" src="https://img.shields.io/badge/License-Apache License, Version 2.0-yellow.svg" />
  </a>
</p>

This repository contains a Helm chart that deploys the MSM infrastructure.

The deployment is designed to run on Kubernetes (K8S) and/or K3S.

## Getting Started

To get started, clone the msm-deployments repository and navigate to the ```msm``` directory.
```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
```
```sh
cd msm-deployments/deployments/msm
```

## Directory Structure

The ```msm``` directory contains the following files and folders:

📦msm
┣ 📂gbear<br>
┃ ┗ 📜appmetadata.yaml<br>
┣ 📂templates<br>
┃ ┣ 📜_helpers.tpl<br>
┃ ┣ 📜clusterrole.yaml<br>
┃ ┣ 📜clusterrolebinding.yaml<br>
┃ ┣ 📜configmap.yaml<br>
┃ ┣ 📜daemonset.yaml<br>
┃ ┣ 📜deployment.yaml<br>
┃ ┣ 📜service.yaml<br>
┃ ┣ 📜serviceaccount.yaml<br>
┃ ┗ 📜webhook.yaml<br>
┣ 📜.helmignore<br>
┣ 📜Chart.yaml<br>
┣ 📜README.md<br>
┗ 📜values.yaml<br>

## Prerequisites

Before deploying the ```MSM``` app on the node, ensure that you have the following prerequisites:

* You will need to have access to a ```Kubernetes cluster```.<br>
* [Helm](https://helm.sh) must be installed to use these charts. <br>

## Install

Before installing the ```msm``` app onto the node, make sure to change the value ```kubernetesDistro``` under ```values.yaml``` file as per your needs. <br>
e.g. <br>
```sh
# change this to desired Kubernetes Distribution e.g. "K8S" or "K3S"
kubernetesDistro: "K8S"
```

```sh
helm install <YOUR_APP_NAME> msm/ --values msm/values.yaml
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

The MSM Camera App/Deployments are under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

***
