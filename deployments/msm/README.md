# msm

![version: 0.1.15](https://img.shields.io/badge/version-0.1.15-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) ![app version: 1.16.0](https://img.shields.io/badge/app%20version-1.16.0-informational?style=flat-square)  [![artifact hub](https://img.shields.io/badge/artifact%20hub-msm-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/msm)

A Helm chart for MSM Deployment

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/msm
```

## Prerequisites

Before deploying the msm app on the node, ensure that you have the following prerequisites:

* You will need to have access to a Kubernetes cluster<br>
* [Helm](https://helm.sh) must be installed to use these charts<br>

## Manual Install

To get started, clone the msm-deployments repository and navigate to the ```msm``` directory.

```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
cd msm-deployments/deployments/msm
```

Before installing the msm  app onto the node, make sure to change the value ```kubernetesDistro``` under ```values.yaml``` file as per your needs. <br>
e.g. <br>
```kubernetesDistro: "K8S"```

```helm install <YOUR_APP_NAME> ./ --values ./values.yaml```

## Usage
Verify everything is in Running state on your Kubernetes Cluster

```kubectl get pods -A```

or

```kubectl get all```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kubernetesDistro | string | `"K3S"` |  |
| cpUrl | string | `"http://msm-cp:9000"` |  |
| cniImage.name | string | `"ghcr.io/media-streaming-mesh/msm-cni"` |  |
| cniImage.tag | string | `"latest"` |  |
| proxyImage.name | string | `"ghcr.io/media-streaming-mesh/msm-dp"` |  |
| proxyImage.tag | string | `"latest"` |  |
| stubImage.name | string | `"ghcr.io/media-streaming-mesh/msm-rtsp-stub"` |  |
| stubImage.tag | string | `"latest"` |  |
| webhookImage.name | string | `"ghcr.io/media-streaming-mesh/msm-admission-webhook"` |  |
| webhookImage.tag | string | `"latest"` |  |
| controlPlaneImage.name | string | `"ghcr.io/media-streaming-mesh/msm-cp"` |  |
| controlPlaneImage.tag | string | `"latest"` |  |
| networkControllerImage.name | string | `"ghcr.io/media-streaming-mesh/msm-nc"` |  |
| networkControllerImage.tag | string | `"latest"` |  |
| config.rtpPort | int | `8050` |  |
| config.gRPCPort | int | `9000` |  |
| config.logLevel | string | `""` |  |
| config.logFormat | string | `""` |  |
