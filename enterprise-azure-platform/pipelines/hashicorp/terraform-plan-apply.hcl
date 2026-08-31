terraform {
  required_version = ">= 1.6.0"
}

locals {
  target_dir = "workloads/dev"
}

# This file is intended to be used as a HashiCorp pipeline-friendly workflow template.
# Run plan with: terraform plan -out=tfplan.out
# Run apply with: terraform apply tfplan.out

variable "plan_only" {
  type    = bool
  default = false
}

variable "azure_subscription_id" {
  type    = string
  default = ""
}

variable "azure_tenant_id" {
  type    = string
  default = ""
}

variable "azure_client_id" {
  type    = string
  default = ""
}

variable "azure_client_secret" {
  type      = string
  sensitive = true
  default   = ""
}

output "pipeline_status" {
  value = var.plan_only ? "Terraform plan executed successfully" : "Terraform apply executed successfully"
}

# Example command sequence for CI/CD execution:
# terraform init
# terraform plan -input=false -lock=false -out=tfplan.out
# terraform show -no-color tfplan.out
# terraform apply -input=false -auto-approve tfplan.out
