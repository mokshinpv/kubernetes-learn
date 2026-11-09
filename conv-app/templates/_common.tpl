{{- define "env-secret.template" }}
- name: {{ .env }}
  valueFrom:
    secretKeyRef:
      name: "{{ .name }}-secret"
      key: {{ .env }}
{{- end }}