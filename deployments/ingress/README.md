# ingress

![version: 0.1.1](https://img.shields.io/badge/version-0.1.1-informational?style=flat-square)    [![artifact hub](https://img.shields.io/badge/artifact%20hub-ingress-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/ingress)

## TL;DR;

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
* [Helm](https://helm.sh) must be installed to use these charts. <br>
* Before deploying ```ingress``` App, ensure <b>```MSM```</b> App is deployed and running.<br><br>
**Follow the instructions for deploying ```MSM``` app by following its README in its folder.<br>**

## Install

```sh
helm install <YOUR_APP_NAME> ingress/ --values ingress/values.yaml
```

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/ingress


## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.name | string | `"control-plane"` |  |
| ingress.serviceName | string | `"msm-controller"` |  |
| ingress.servicePort | int | `9000` |  |
| ingress.url | string | `"/msm_cp*"` |  |
