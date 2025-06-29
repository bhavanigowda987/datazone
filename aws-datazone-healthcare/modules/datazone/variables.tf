
variable "domain_name" {
  description = "The name of the DataZone domain"
  type        = string
}

variable "project_name" {
  description = "The name of the DataZone project"
  type        = string
}

variable "domain_execution_role" {
  description = "IAM role for DataZone domain execution"
  type        = string
}
