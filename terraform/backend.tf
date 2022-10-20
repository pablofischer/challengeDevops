terraform {
  required_version = "~> 0.13.5"

  backend "s3" {
    region = "us-east-1"
    bucket = "devops-challenge-pf"
    ##dynamodb_table = "devops-challenge-pf-lock"
    profile  = ""
    role_arn = ""
    encrypt  = "true"
    key      = "devops-challenge-pf/terraform.tfsate"
  }
}