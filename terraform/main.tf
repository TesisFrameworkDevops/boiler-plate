terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5"
}

provider "aws" {
  region = var.region
}

resource "aws_ecr_repository" "app_repo" {
  name = "boilerplate-app"
}

resource "aws_ecs_cluster" "cluster" {
  name = "boilerplate-cluster"
}