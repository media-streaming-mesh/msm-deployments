# camera

![version: 0.1.2](https://img.shields.io/badge/version-0.1.2-informational?style=flat-square)    [![artifact hub](https://img.shields.io/badge/artifact%20hub-camera-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/camera)

The deployment can run on Kubernetes (K8S) and K3S.

## Install (from charts.mediastreamingmesh.dev)

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/camera
```
## Install (using git clone)

To get started, clone this repository and navigate to the ```camera``` directory.
```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
```
```sh
cd msm-deploymnts/deployments/camera
```
```
helm install camera ./ --values ./values.yaml
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
* [Helm](https://helm.sh) must be installed to use these charts. <br>
* Before deploying ```Camera``` App, ensure <b>```MSM```</b> and <b>```Ingress```</b> Apps are deployed and running.<br><br>
**Follow the instructions for deploying ```MSM``` and ```Ingress``` apps by following their README in their folders.<br>**

## Deploy

Before deploying the camera app, change the values of the camera fields under values.yaml file as per your needs. <br>
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

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rtspServer.name | string | `"ciscolabs/rtsp-server"` |  |
| rtspServer.tag | string | `"latest"` |  |
| rtspClient.name | string | `"ciscolabs/rtsp-client"` |  |
| rtspClient.tag | string | `"latest"` |  |
| stubImage.name | string | `"ghcr.io/media-streaming-mesh/msm-rtsp-stub"` |  |
| stubImage.tag | string | `"latest"` |  |
| camera.appName | string | `"giles-study"` |  |
| camera.ingressName | string | `"giles-study"` |  |
| camera.rtspName | string | `"giles-study"` |  |
| camera.hlsName | string | `"giles-study-hls"` |  |
| camera.rtspPort | int | `554` |  |
| camera.hlsPort | int | `8888` |  |
| camera.hlsUrl | string | `"/giles-study"` |  |
| camera.cameraUrl | string | `"rtsp://msm:RUSTsuxr0x@82.36.109.33:8554/s1"` |  |
| camera.serverUrl | string | `"rtsp://0.0.0.0:554/giles-study"` |  |
