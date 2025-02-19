terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_budgets_budget" "monthly-budget" {    
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_period_start = "2025-01-07_00:00"
  time_unit         = "MONTHLY"
}