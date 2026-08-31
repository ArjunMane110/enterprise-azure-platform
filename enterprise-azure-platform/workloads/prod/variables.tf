variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "location" {
  description = "Azure region for the platform resources"
  type        = string
  default     = "eastus"
}
