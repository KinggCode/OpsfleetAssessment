provider "kubernetes" {
  config_path    = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.28.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = ">= 0.30.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
  }

  backend "s3" {
    bucket = "espace-project-store"
    key    = "opsfleet/infrastructure/opsfleet_dev_karpenter_tf_state"
    region = "eu-west-1"
  }
}
