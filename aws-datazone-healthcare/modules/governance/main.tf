
resource "aws_lakeformation_permissions" "catalog_access" {
  principal   = var.role_arn
  permissions = ["ALL"]
  catalog_id  = var.catalog_id
}
