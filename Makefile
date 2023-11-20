cluster-local:
	k3d cluster create --config ./cluster/k3d/config.yaml

switch-context:
	kubectl config use-context k3d-jrstech

cluster-info:
	kubectl cluster-info