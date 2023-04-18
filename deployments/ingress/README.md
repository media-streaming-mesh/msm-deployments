# ingress

![version: 0.1.0](https://img.shields.io/badge/version-0.1.0-informational?style=flat-square)    [![artifact hub](https://img.shields.io/badge/artifact%20hub-ingress-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/ingress)

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/ingress
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.name | string | `"control-plane"` |  |
| ingress.serviceName | string | `"msm-controller"` |  |
| ingress.servicePort | int | `9000` |  |
| ingress.url | string | `"/msm_cp*"` |  |
