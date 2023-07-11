# msm-crds

![version: 0.1.0](https://img.shields.io/badge/version-0.1.0-informational?style=flat-square) ![type: application](https://img.shields.io/badge/type-application-informational?style=flat-square) ![app version: 0.1.0](https://img.shields.io/badge/app%20version-0.1.0-informational?style=flat-square)  [![artifact hub](https://img.shields.io/badge/artifact%20hub-msm--crds-informational?style=flat-square)](https://artifacthub.io/packages/helm/media-streaming-mesh/msm-crds)

A Helm chart for msm-crds

## TL;DR;

```bash
helm repo add msm https://charts.mediastreamingmesh.dev
helm install --generate-name --wait msm/msm-crds
```

## Prerequisites

Before deploying the msm-crds app on the node, ensure that you have the following prerequisites:

* You will need to have access to a Kubernetes cluster<br>
* [Helm](https://helm.sh) must be installed to use these charts<br>

## Manual Install

To get started, clone the msm-deployments repository and navigate to the ```msm-crds``` directory.

```sh
git clone https://github.com/media-streaming-mesh/msm-deployments.git
cd msm-deployments/deployments/msm-crds
```

Before installing the msm-crds  app onto the node, make sure to change the value ```kubernetesDistro``` under ```values.yaml``` file as per your needs. <br>
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
| controllerManager.kubeRbacProxy.args[0] | string | `"--secure-listen-address=0.0.0.0:8443"` |  |
| controllerManager.kubeRbacProxy.args[1] | string | `"--upstream=http://127.0.0.1:8080/"` |  |
| controllerManager.kubeRbacProxy.args[2] | string | `"--logtostderr=true"` |  |
| controllerManager.kubeRbacProxy.args[3] | string | `"--v=0"` |  |
| controllerManager.kubeRbacProxy.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| controllerManager.kubeRbacProxy.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| controllerManager.kubeRbacProxy.image.repository | string | `"gcr.io/kubebuilder/kube-rbac-proxy"` |  |
| controllerManager.kubeRbacProxy.image.tag | string | `"v0.14.1"` |  |
| controllerManager.kubeRbacProxy.resources.limits.cpu | string | `"500m"` |  |
| controllerManager.kubeRbacProxy.resources.limits.memory | string | `"128Mi"` |  |
| controllerManager.kubeRbacProxy.resources.requests.cpu | string | `"5m"` |  |
| controllerManager.kubeRbacProxy.resources.requests.memory | string | `"64Mi"` |  |
| controllerManager.manager.args[0] | string | `"--health-probe-bind-address=:8081"` |  |
| controllerManager.manager.args[1] | string | `"--metrics-bind-address=127.0.0.1:8080"` |  |
| controllerManager.manager.args[2] | string | `"--leader-elect"` |  |
| controllerManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| controllerManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| controllerManager.manager.image.repository | string | `"ciscolabs/msm-nc"` |  |
| controllerManager.manager.image.tag | string | `"07102023"` |  |
| controllerManager.manager.imagePullPolicy | string | `"IfNotPresent"` |  |
| controllerManager.manager.resources.limits.cpu | string | `"500m"` |  |
| controllerManager.manager.resources.limits.memory | string | `"128Mi"` |  |
| controllerManager.manager.resources.requests.cpu | string | `"10m"` |  |
| controllerManager.manager.resources.requests.memory | string | `"64Mi"` |  |
| controllerManager.replicas | int | `1` |  |
| controllerManager.serviceAccount.annotations | object | `{}` |  |
| kubernetesClusterDomain | string | `"cluster.local"` |  |
| metricsService.ports[0].name | string | `"https"` |  |
| metricsService.ports[0].port | int | `8443` |  |
| metricsService.ports[0].protocol | string | `"TCP"` |  |
| metricsService.ports[0].targetPort | string | `"https"` |  |
| metricsService.type | string | `"ClusterIP"` |  |
