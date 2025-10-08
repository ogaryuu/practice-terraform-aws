# ----------------------------------------------------------------------
# Terraform configuration
# ----------------------------------------------------------------------
terraform {
    required_version = ">= 1.0.0"
    
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = ">= 4.0.0"
        }
    }
}

# ----------------------------------------------------------------------
# AWS Provider configuration
# ----------------------------------------------------------------------
provider "aws" {
    profile = "terraform"
    region = "ap-northeast-1"
} 

# ----------------------------------------------------------------------
# variables
# ----------------------------------------------------------------------
variable "project" {
    type        = string
}

variable "environment" {
    type        = string
}

