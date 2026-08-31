variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region for the platform resources"
  type        = string
  default     = "eastus"
}
