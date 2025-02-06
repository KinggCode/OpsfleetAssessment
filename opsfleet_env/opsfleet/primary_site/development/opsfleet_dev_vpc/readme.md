OpsFleet Dev VPC

Overview

The opsfleet-dev-vpc module defines and provisions the network infrastructure for the OpsFleet Development environment. This includes creating a Virtual Private Cloud (VPC), subnets, routing tables, internet gateway, VPC Flow Logs, and other essential networking components.

# Resources Overview

# The following resources are provisioned in this module:

# 1. VPC

- Resource: aws_vpc

- Description: Defines the virtual network for the OpsFleet Dev environment.

- CIDR Block: 10.6.0.0/16

- DNS Support: Enabled

- DNS Hostnames: Enabled

2. Subnets

- Four subnets are created for different tiers:

- Web Subnet (opsfleet_web_subnet)

    - CIDR Block: 10.6.1.0/24

    - Availability Zone: eu-west-1a

- Data Subnet (opsfleet_data_subnet)

    - CIDR Block: 10.6.2.0/24

    - Availability Zone: eu-west-1b

- Public Subnet (opsfleet_public_subnet)

    - CIDR Block: 10.6.3.0/24

    - Availability Zone: eu-west-1c

- Management Subnet (opsfleet_mgt_subnet)

    - CIDR Block: 10.6.4.0/24

    - Availability Zone: eu-west-1c

3. Internet Gateway

    - Resource: aws_internet_gateway

    - Description: Provides internet access for public subnets.

4. Route Table and Associations

Resource: aws_route_table

Description: Defines routing rules for the VPC.

Default Route: Routes internet-bound traffic to the Internet Gateway (0.0.0.0/0).

Subnet Associations:

Web Subnet

Management Subnet

Public Subnet

# 5. VPC Flow Logs

Resource: aws_flow_log

Description: Captures network traffic for analysis and monitoring.

Log Destination: CloudWatch Log Group (opsfleet_dev_cloudwatch_log)

# 6. IAM Role for VPC Logging

Resource: aws_iam_role

Description: IAM Role with permissions for VPC Flow Logs.

Policy: Grants permissions for logging network traffic.

# 7. EC2 Endpoint

- Resource: aws_ec2_instance_connect_endpoint

- Description: Allows secure connection to EC2 instances within the VPC.

- Subnet: Web Subnet


# Variables

- company_name: Short name of the company (default: opsfleet).

- company_fullname: Full company name (default: OpsFleet).

- env: Current environment (default: dev).

- default_region: AWS region (default: eu-west-1).


# Deployment Steps
1. Clone the repository:
```sh
git clone https://github.com/your-repo/opsfleet-dev-cluster.git
cd opsfleet-dev-cluster

``` 

2. Initialize Terraform:
```sh
terraform init
```


3. Validate the configuration:
```sh
terraform validate
```

4. Plan the deployment:
```sh
terraform plan
```

5. Apply the configuration:
```sh
terraform apply -auto-approve
```

# Notes

The VPC is designed specifically for development use and may not be suitable for production without modifications.

The internet gateway is only used by public subnets; private resources should utilize NAT Gateway or VPN for external access.

This README provides an overview of the VPC networking setup for OpsFleet Dev. If any changes are needed, modify the network.tf, subnets.tf, or related Terraform files accordingly.

