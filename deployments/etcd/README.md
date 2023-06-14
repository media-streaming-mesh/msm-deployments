# etcd

![version: 0.0.3](https://img.shields.io/badge/version-0.0.3-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) [![artifact hub](https://img.shields.io/badge/artifact%20hub-etcd-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/etcd)

A Helm chart to deploy etcd for MSM

[//]: # (## TL;DR;)

[//]: # ()
[//]: # (```bash)

[//]: # (helm repo add msm https://charts.mediastreamingmesh.dev)

[//]: # (helm install --generate-name --wait msm/etcd)

[//]: # (```)

## Prerequisites

Before deploying the etcd app on the node, ensure that you have the following prerequisites:

- You will need to have access to a Kubernetes cluster<br>
- [Helm](https://helm.sh) must be installed to use these charts<br>

## Manual Install

To get started, clone the msm-deployments repository and navigate to the `etcd` directory.

```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
cd msm-deployments/deployments/etcd
```

Before installing the etcd app onto the node, make sure to change the value `kubernetesDistro` under `values.yaml` file as per your needs. <br>
e.g. <br>
`kubernetesDistro: "K8S"`

`helm install <YOUR_APP_NAME> ./ --values ./values.yaml`

## Usage

Verify everything is in Running state on your Kubernetes Cluster

`kubectl get pods -A`

or

`kubectl get all`

## Values

| Key              | Type   | Default                 | Description |
|------------------|--------|-------------------------|-------------|
| kubernetesDistro | string | `"K3S"`                 |             |
| etcdImage.name   | string | `"quay.io/coreos/etcd"` |             |
| etcdImage.tag    | string | `"latest"`              |             |
