# ingress

![version: 0.1.7](https://img.shields.io/badge/version-0.1.7-informational?style=flat-square)    [![artifact hub](https://img.shields.io/badge/artifact%20hub-ingress-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/ingress)

A Helm chart to deploy an ingress for MSM

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/ingress
```

## Prerequisites

Before deploying the ingress app on the node, ensure that you have the following prerequisites:

* You will need to have access to a Kubernetes cluster<br>
* [Helm](https://helm.sh) must be installed to use these charts<br>

## Manual Install

To get started, clone the msm-deployments repository and navigate to the ```ingress``` directory.

```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
cd msm-deployments/deployments/ingress
```

Before installing the ingress  app onto the node, make sure to change the value ```kubernetesDistro``` under ```values.yaml``` file as per your needs. <br>
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
| controllerImage.name | string | `"registry.k8s.io/ingress-nginx/controller"` |  |
| controllerImage.tag | string | `"v1.7.0@sha256:7612338342a1e7b8090bef78f2a04fffcadd548ccaabe8a47bf7758ff549a5f7"` |  |
| certgenImage.name | string | `"registry.k8s.io/ingress-nginx/kube-webhook-certgen"` |  |
| certgenImage.tag | string | `"v20230312-helm-chart-4.5.2-28-g66a760794@sha256:01d181618f270f2a96c04006f33b2699ad3ccb02da48d0f89b22abce084b292f"` |  |
