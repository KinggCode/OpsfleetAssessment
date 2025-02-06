# OpsFleet Environments

OpsFleet is structured into three main environments to support the software development lifecycle: Development, Staging, and Production. Each environment consists of specific resources tailored to its purpose, ensuring seamless deployment, testing, and operational stability.



# 1. OpsFleet Development Environment

The development environment is designed for engineers to build, test, and experiment with new features. It allows rapid iteration and debugging before promoting changes to staging.

# Resources:

- OpsFleet Dev Cluster: EKS cluster for running Kubernetes workloads in development.

- OpsFleet Dev Cluster Access Entry: IAM roles and policies for developer access.

- OpsFleet Dev Karpenter: Auto-scaling configuration for Kubernetes worker nodes.

- OpsFleet Dev Node Group: EC2-based node groups supporting workloads.

- OpsFleet Dev Server: Application and database servers for development.

- OpsFleet Dev VPC: Virtual Private Cloud to isolate network resources.

# Key Features:

- Frequent code deployments with minimal restrictions.

- Debugging and troubleshooting tools enabled.

- Cost-optimized instances (e.g., SPOT instances).

- Auto-scaling enabled with Karpenter for efficient resource utilization.




# Key Features:

- Highly available and scalable infrastructure.

- Monitoring and logging with AWS CloudWatch and Prometheus.

- Auto-scaling for traffic surges.

- Regular security patches and compliance enforcement.


# Conclusion

Each environment in OpsFleet is carefully designed to serve specific purposes within the software lifecycle. Development supports rapid iteration, staging ensures validation, and production provides stability and reliability for end users. By maintaining clear distinctions and controlled access, OpsFleet ensures seamless application deployment and management.

