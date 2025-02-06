resource "aws_codegurureviewer_repository_association" "default_codegurureviewer_repository_association" {
  repository {
    codecommit {
      name = var.repository_name
    }
  }
  kms_key_details {
    encryption_option = "${var.encryption_option}"
    kms_key_id        = var.key_id
  }
}