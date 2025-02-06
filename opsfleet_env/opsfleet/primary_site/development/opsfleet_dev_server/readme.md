# OpsFleet Dev Server Infrastructure

# Overview

The opsfleet-dev-server infrastructure is provisioned using Terraform and consists of various AWS resources that support the development environment for OpsFleet. This document provides an overview of the key resources that developers can expect within this infrastructure.

# Resources

1. Amazon Machine Image (AMI)

- The server is based on the latest Ubuntu 20.04 AMI.

- AMI is dynamically retrieved using Terraform's data "aws_ami" lookup.

- Owner: Canonical (AWS ID: 099720109477).



2. Networking (VPC & Subnets)

- VPC: opsfleet_dev_vpc (referenced via var.opsfleet_dev_vpc).

- Subnets:

    -  Web Subnet: opsfleet_dev_web_subnet

    -  Data Subnet: opsfleet_dev_data_subnet

    - Management Subnet: opsfleet_dev_mgt_subnet



3. Compute (EC2 Instance)

- Instance Type: t2.medium

- Uses the dynamically retrieved Ubuntu AMI.

- Public IP is associated for accessibility.

- IAM Role and Instance Profile assigned.

- Instance metadata options:

- HTTP endpoint: Enabled

- HTTP tokens: Required

- Instance metadata tags: Enabled



4. Security Groups & Rules

A security group (opsfleet_dev_server_sg) is provisioned to control inbound and outbound traffic:

# Inbound rules:

- SSH (Port 22) – Open to all (0.0.0.0/0)

- HTTP (Port 80) – Open to all (0.0.0.0/0)

- HTTPS (Port 443) – Open to all (0.0.0.0/0)

- API Dashboard (Port 9000) – Open to all (0.0.0.0/0)

- Web Application (Port 3000) – Open to all (0.0.0.0/0)

# Outbound rules:

All traffic is allowed (0.0.0.0/0).

5. IAM Role & Instance Profile

- IAM Role: opsfleet_dev_server_role (Allows EC2 to assume permissions).

- IAM Instance Profile: opsfleet_dev_server_profile.

- Policies are managed via aws_iam_policy_document.

6. SSH Key Pair

- Name: ${var.company}-${var.env}-key

- Public key provided within aws_key_pair resource.

7. Terraform Backend Configuration

- State file is stored in an S3 bucket (espace-project-store).

- Key path: opsfleet/infrastructure/opsfleet_dev_server_tf_state.

- AWS Region: eu-west-1.

8. Outputs

Public IP Address of the server.

- Availability Zone.

- Instance State.

- Deployment Instructions


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