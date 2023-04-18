# rtsp

![version: 0.0.3](https://img.shields.io/badge/version-0.0.3-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) ![app version: 1.16.0](https://img.shields.io/badge/app%20version-1.16.0-informational?style=flat-square)  [![artifact hub](https://img.shields.io/badge/artifact%20hub-rtsp-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/rtsp)

A Helm chart for RSTP Server and (Internal) Client

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/rtsp
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
