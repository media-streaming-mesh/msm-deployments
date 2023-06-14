# rtsp

![version: 0.0.12](https://img.shields.io/badge/version-0.0.12-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) ![app version: 1.16.0](https://img.shields.io/badge/app%20version-1.16.0-informational?style=flat-square) [![artifact hub](https://img.shields.io/badge/artifact%20hub-rtsp-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/rtsp)

A Helm chart for RSTP Server and (Internal) Client

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/rtsp
```

## Prerequisites

Before deploying the rtsp app on the node, ensure that you have the following prerequisites:

- You will need to have access to a Kubernetes cluster<br>
- [Helm](https://helm.sh) must be installed to use these charts<br>

## Manual Install

To get started, clone the msm-deployments repository and navigate to the `rtsp` directory.

```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
cd msm-deployments/deployments/rtsp
```

Before installing the rtsp app onto the node, make sure to change the value `kubernetesDistro` under `values.yaml` file as per your needs. <br>
e.g. <br>
`kubernetesDistro: "K8S"`

`helm install <YOUR_APP_NAME> ./ --values ./values.yaml`

## Usage

Verify everything is in Running state on your Kubernetes Cluster

`kubectl get pods -A`

or

`kubectl get all`

## Values

| Key              | Type   | Default                                        | Description |
|------------------|--------|------------------------------------------------|-------------|
| clientImage.name | string | `"ciscolabs/rtsp-client"`                      |             |
| clientImage.tag  | string | `"latest"`                                     |             |
| serverImage.name | string | `"ciscolabs/rtsp-server"`                      |             |
| serverImage.tag  | string | `"latest"`                                     |             |
| stubImage.name   | string | `"ghcr.io/media-streaming-mesh/msm-rtsp-stub"` |             |
| stubImage.tag    | string | `"latest"`                                     |             |
