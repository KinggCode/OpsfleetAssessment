# OpsFleet Inc. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- root/provider.tf ---

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
  }

  backend "s3" {
    bucket = "espace-project-store"
    key    = "opsfleet/infrastructure/opsfleet_governance_tf_state"
    region = "eu-west-1"
  }
}


####################################################################################
####################################################################################

# Provider definitios for North Virginia Region
provider "aws" {
  region = var.aws_regions.north_virginia
  alias  = "awsnorthvirginia"
}

provider "awscc" {
  region = var.aws_regions.north_virginia
  alias  = "awsdrnorthvirginia"
}

####################################################################################


# Provider definitios for Ohio Region
provider "aws" {
  region = var.aws_regions.ohio
  alias  = "awsohio"
}

provider "awscc" {
  region = var.aws_regions.ohio
  alias  = "awsdrohio"
}

####################################################################################

# Provider definitios for North California Region
provider "aws" {
  region = var.aws_regions.north_california
  alias  = "awsnorthcalifornia"
}

provider "awscc" {
  region = var.aws_regions.north_california
  alias  = "awsdrnorthcalifornia"
}

####################################################################################


# Provider definitios for Oregon Region
provider "aws" {
  region = var.aws_regions.oregon
  alias  = "awsoregon"
}

provider "awscc" {
  region = var.aws_regions.oregon
  alias  = "awsccoregon"
}

####################################################################################

# Provider definitios for Stockholm Region
provider "aws" {
  region = var.aws_regions.stockholm
  alias  = "awsstockholm"
}

provider "awscc" {
  region = var.aws_regions.stockholm
  alias  = "awsccstockholm"
}

####################################################################################

# Provider definitios for London Region
provider "aws" {
  region = var.aws_regions.london
  alias  = "awslondon"
}

provider "awscc" {
  region = var.aws_regions.london
  alias  = "awsdrlondon"
}