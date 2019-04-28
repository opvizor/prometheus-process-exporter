dev:
	helm template charts/prometheus-process-exporter
	helm upgrade --debug --install --force prometheus-exporter charts/prometheus-process-exporter
	sleep 2
	kubectl port-forward svc/prometheus-exporter-prometheus-process-exporter 9100
