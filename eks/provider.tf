provider "aws" {
  region  = var.region
  profile = var.profile

}

terraform {
  required_providers {
    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = "2.23.0"
    # }
    # helm = {
    #   source = "hashicorp/helm"
    #   version = "~> 2.5"
    # }
  }
}

# provider "kubernetes" {
#   config_path    = "~/.kube/config"
#   # config_context = "arn:aws:eks:us-west-1:${data.aws_caller_identity.current.account_id}:cluster/${var.cluster_name}"
# }

# provider "helm" {
#   kubernetes {
#     config_path = "~/.kube/config" 
#   }
# }

provider "null" {}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
  #config_context = "arn:aws:eks:us-west-1:${data.aws_caller_identity.current.account_id}:cluster/${var.cluster_name}"
}