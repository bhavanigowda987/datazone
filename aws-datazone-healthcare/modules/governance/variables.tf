
variable "role_arn" {
  description = "IAM Role ARN that will be granted permissions in Lake Formation"
  type        = string
}

variable "catalog_id" {
  description = "AWS account ID used as the Lake Formation catalog ID"
  type        = string
}
