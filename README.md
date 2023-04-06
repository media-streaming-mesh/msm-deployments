# MSM Deployments

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/media-streaming-mesh/msm-deployments/release.yaml?branch=main&style=flat-square)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/media-streaming-mesh)](https://artifacthub.io/packages/search?repo=media-streaming-mesh)

This repository contains deployment scripts and configurations for the Media Streaming Mesh (MSM) project.

MSM is an open-source framework that enables real-time media applications to be first-class citizens in cloud-native Kubernetes environments.

MSM facilitates real-time audio and video streaming over the Internet using a distributed mesh network, is designed to be resilient to network disruptions, and is capable of delivering high-quality media streams with low latency.

The deployments in this repository are designed to help users quickly set up and run an MSM deployment.

## **Contents**

This repository contains several directories, each of which represents a different deployment scenario:

`msm`: Contains templates and values for deploying the MSM infrastructure using Helm Charts.

`camera`: Contains templates and values for deploying Live Camera Feeds on MSM using Helm Charts.

`msm-rtsp`: Contains templates and values for deploying an RTSP Server on MSM using Helm Charts.

Each deployment scenario has its own README file with instructions on how to set up and run the deployment.

## Usage

[Helm](https://helm.sh) must be installed to use these charts.
Please refer to the [official documentation](https://helm.sh/docs/intro/install/) to get started.

```shell
helm repo add msm https://charts.mediastreamingmesh.io
```

You can then see the charts by running:

```shell
helm search repo msm
```

You can install charts using the following command:

```shell
helm install --generate-name msm/CHART
# OR
helm install --name my-release msm/CHART
```

> **Tip**: List all installed releases using `helm list`.

To uninstall a chart release:

```shell
helm delete my-release
```

## **Contributing**

We welcome contributions to this repository. If you would like to contribute, please submit a pull request with your changes.

Before submitting a pull request, please make sure that your changes follow our coding guidelines and that all tests pass.

## **License**

MSM Deployments is licensed under the Apache License, Version 2.0. See the LICENSE file for more information.

## **Contact**

If you have any questions or comments about MSM Deployments, please email us at info@mediastreamingmesh.io.
