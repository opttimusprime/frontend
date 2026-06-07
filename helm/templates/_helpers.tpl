{{- define "frontend.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "frontend.fullname" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "frontend.labels" -}}
app: {{ include "frontend.name" . }}
release: {{ .Release.Name }}
{{- end -}}