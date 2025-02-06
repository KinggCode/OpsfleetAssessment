resource "aws_codebuild_project" "default_codebuild_project" {
  name          = "${var.project_name}"
  description   = "${var.project_description}"
  build_timeout = "${var.build_timeout}"
  service_role  = var.service_role_arn

  artifacts {
    type = "${var.artifact_type}"
  }

  cache {
    type     = "${var.cache_type}"
    location = var.cache_location
  }

  environment {
    compute_type                = "${var.compute_type}"
    image                       = "${var.image}"
    type                        = "${var.type}"
    image_pull_credentials_type = "${var.image_pull_credentials_type}"

    environment_variable {
      name  = "${var.environment_variable_name}"
      value = "${var.environment_variable_value}"
    }

  }

  logs_config {
    cloudwatch_logs {
      group_name  = "${var.cloudwatch_logs_group_name}"
      stream_name = "${var.cloudwatch_logs_stream_name}"
    }
    s3_logs {
      status   = "${var.s3_logs_status}"
      location = "${var.s3_logs_location}"
    }
  }

  source {
    type            = "${var.source_type}"
    /* buildspec = var.buildspec */
    location        = "https://github.com/opsfleet-Inc/${var.source_location}"
    git_clone_depth = var.git_clone_depth

    git_submodules_config {
      fetch_submodules = var.fetch_submodules
    }
  }

  source_version = "${var.source_version}"

  vpc_config {
    vpc_id = var.vpc_id
    subnets = var.subnets
    security_group_ids = var.security_groups
  }

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}
