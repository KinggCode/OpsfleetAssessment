# Apply the ConfigMap:
kubectl apply -f nvidia-device-plugin-config.yaml

# Apply the NodePool Configuration
kubectl apply -f karpenter-gpu-nodepool.yaml

# Deploy AI Workload
kubectl apply -f ai-inference-deployment.yaml

# Monitor and Optimize GPU Utilization
kubectl exec -it <gpu-pod-name> -- nvidia-smi
