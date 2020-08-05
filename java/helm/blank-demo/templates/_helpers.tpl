{{/* vim: set filetype=mustache: */}}
{{- /*
service.labels.standard prints the standard service Helm labels.
The standard labels are frequently used in metadata.
*/ -}}

{{- define "service.image" -}}
{{- printf "%s:%s" .Values.image.repository (default (.Chart.Version) .Values.image.tag) -}}
{{- end -}}

{{- define "service.labels.standard" -}}
gyjxwh.devops/release: {{ .Chart.Name | quote }}
{{- end -}}

{{- define "service.match.labels" -}}
gyjxwh.devops/release: {{ .Chart.Name | quote }}
{{- end -}}

{{- define "service.microservice.labels" -}}
gyjxwh.devops/service: {{ .Chart.Name | quote }}
gyjxwh.devops/version: {{ .Chart.Version | quote }}
{{- end -}}
