terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28"
    }
    # cloudinit = {
    #   source  = "hashicorp/cloudinit"
    #   version = "~> 2.1"
    # }
  }
  
# code to create remote state on terraform cloud
# backend "remote" {
#     organization = "Anmay"

#     workspaces {
#       name = "3tier-test-us-east"
#     }
#  }
 }

