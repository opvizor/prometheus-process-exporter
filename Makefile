dev:
	#helm delete --purge process-exporter
	helm template charts/prometheus-process-exporter
	helm install --name process-exporter charts/prometheus-process-exporter
	sleep 2
	kubectl port-forward svc/process-exporter-prometheus-process-exporter 9585
