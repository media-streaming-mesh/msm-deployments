# rtsp

![version: 0.0.4](https://img.shields.io/badge/version-0.0.4-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) ![app version: 1.16.0](https://img.shields.io/badge/app%20version-1.16.0-informational?style=flat-square)  [![artifact hub](https://img.shields.io/badge/artifact%20hub-rtsp-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/rtsp)

A Helm chart for RSTP Server and (Internal) Client

This repository contains files necessary to deploy an RTSP server app on Media Streaming Mesh (MSM).
The deployment consists of an rtsp-server deployment and service.  It also contains an ingress configuration and a service for providing HLS access to the RTSP server.

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
 ┃ ┣ 📜ingress.yaml<br>
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

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/rtsp

## Usage
Verify everything is in Running state on your Kubernetes Cluster 

```kubectl get pods -A```

You can test the stream using ```VLC player``` or ```ffplay```

```sh
rtsp://<YOUR_NODE_IP>/<YOUR_APP_NAME>
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clientImage.name | string | `"ciscolabs/rtsp-client"` |  |
| clientImage.tag | string | `"latest"` |  |
| serverImage.name | string | `"ciscolabs/rtsp-server"` |  |
| serverImage.tag | string | `"latest"` |  |
| stubImage.name | string | `"ghcr.io/media-streaming-mesh/msm-rtsp-stub"` |  |
| stubImage.tag | string | `"latest"` |  |
