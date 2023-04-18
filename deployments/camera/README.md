# camera

![version: 0.1.1](https://img.shields.io/badge/version-0.1.1-informational?style=flat-square)    [![artifact hub](https://img.shields.io/badge/artifact%20hub-camera-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/camera)

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/camera
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
