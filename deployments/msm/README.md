# msm

![version: 0.1.5](https://img.shields.io/badge/version-0.1.5-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) ![app version: 1.16.0](https://img.shields.io/badge/app%20version-1.16.0-informational?style=flat-square)  [![artifact hub](https://img.shields.io/badge/artifact%20hub-msm-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/msm)

A Helm chart for MSM Deployment

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/msm
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kubernetesDistro | string | `"K8S"` |  |
| nodeSelector | string | `"{{ if eq .Values.kubernetesDistro \"K8S\" }}{{ else if eq .Values.kubernetesDistro \"K3S\" }}true{{ end }}"` |  |
| controllerUrl | string | `"http://msm-controller:9000"` |  |
| cniImage.name | string | `"ghcr.io/media-streaming-mesh/msm-cni"` |  |
| cniImage.tag | string | `"latest"` |  |
| proxyImage.name | string | `"ghcr.io/media-streaming-mesh/msm-dp"` |  |
| proxyImage.tag | string | `"latest"` |  |
| stubImage.name | string | `"ghcr.io/media-streaming-mesh/msm-rtsp-stub"` |  |
| stubImage.tag | string | `"latest"` |  |
| webhookImage.name | string | `"ghcr.io/media-streaming-mesh/msm-admission-webhook"` |  |
| webhookImage.tag | string | `"latest"` |  |
| controllerImage.name | string | `"ghcr.io/media-streaming-mesh/msm-cp"` |  |
| controllerImage.tag | string | `"latest"` |  |
