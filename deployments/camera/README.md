# camera

![version: 0.2.3](https://img.shields.io/badge/version-0.2.3-informational?style=flat-square) [![artifact hub](https://img.shields.io/badge/artifact%20hub-camera-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/camera)

A Helm chart to deploy a camera on MSM

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/camera
```

## Prerequisites

Before deploying the camera app on the node, ensure that you have the following prerequisites:

- You will need to have access to a Kubernetes cluster<br>
- [Helm](https://helm.sh) must be installed to use these charts<br>

## Manual Install

To get started, clone the msm-deployments repository and navigate to the `camera` directory.

```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
cd msm-deployments/deployments/camera
```

Before installing the camera app onto the node, make sure to change the value `kubernetesDistro` under `values.yaml` file as per your needs. <br>
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
| cpUrl            | string | `"http://msm-cp:9000"`                         |             |
| rtspServer.name  | string | `"ciscolabs/rtsp-server"`                      |             |
| rtspServer.tag   | string | `"latest"`                                     |             |
| rtspClient.name  | string | `"ciscolabs/rtsp-client"`                      |             |
| rtspClient.tag   | string | `"latest"`                                     |             |
| stubImage.name   | string | `"ghcr.io/media-streaming-mesh/msm-rtsp-stub"` |             |
| stubImage.tag    | string | `"latest"`                                     |             |
| camera.rtspPort  | int    | `554`                                          |             |
| camera.hlsPort   | int    | `8888`                                         |             |
| config.appName   | string | `""`                                           |             |
| config.cameraUrl | string | `""`                                           |             |
