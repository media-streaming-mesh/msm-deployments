{{/*
Expand the name of the chart.
*/}}
{{- define "Ingress.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "Ingress.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "Ingress.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "Ingress.Controller" -}}
{{- printf "controller" -}}
{{- end }}

{{- define "Ingress.Webhook" -}}
{{- printf "admission-webhook" -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "Selector.labels" -}}
app.kubernetes.io/component: {{ include "Ingress.Controller" . }} 
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- end }}

{{- define "Ingress.labels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
helm.sh/chart: {{ include "Ingress.chart" . }}
{{- end }}

{{- define "Controller.labels" -}}
app.kubernetes.io/component: {{ include "Ingress.Controller" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
helm.sh/chart: {{ include "Ingress.chart" . }}
{{- end }}

{{- define "C2.labels" -}}
app.kubernetes.io/component: {{ include "Ingress.Controller" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
{{- end }}

{{- define "Webhook.labels" -}}
app.kubernetes.io/component: {{ include "Ingress.Webhook" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
helm.sh/chart: {{ include "Ingress.chart" . }}
{{- end }}

{{- define "W2.labels" -}}
app.kubernetes.io/component: {{ include "Ingress.Webhook" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
{{- end }}
