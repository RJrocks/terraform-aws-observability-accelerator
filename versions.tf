terraform {
  required_version = ">= 1.1.0, < 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = ">= 0.24.0"
    }
    grafana = {
      source  = "grafana/grafana"
      version = "1.25.0"
    }
  }
}