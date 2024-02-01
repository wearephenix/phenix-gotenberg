{{ define "fullName" }}
  {{- if not .Values.nameSuffix -}}
    gotenberg
  {{- else -}}
    gotenberg-{{ .Values.nameSuffix }}
  {{- end -}}
{{ end }}

{{- define "kubeLabels" }}
  app.kubernetes.io/name: gotenberg
  app.kubernetes.io/instance: {{ template "fullName" .}}
  ph/env: {{ .Values.env }}
  ph/team: connect
  ph/product: phenix-connect
{{- end }}
