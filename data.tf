data "terraform_remote_state" "vpc" {
  backend "s3" {
    bucket = var.bucket
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-2"
  }
}

output "VPC_ID" {
  value = data.terraform_remote_state.vpc.outputs.VPC_ID
}