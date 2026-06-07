data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "roboshop-tf-state"
    key    = "dev/eks/terraform.tfstate"
    region = var.aws_region
  }
}

