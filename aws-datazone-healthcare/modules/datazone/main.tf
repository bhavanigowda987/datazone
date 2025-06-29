
resource "aws_datazone_domain" "healthcare" {
  name                  = var.domain_name
  description           = "Healthcare data domain"
  domain_execution_role = var.domain_execution_role
}

resource "aws_datazone_project" "project" {
  name               = var.project_name
  domain_identifier  = aws_datazone_domain.healthcare.id
  description        = "Project for managing healthcare datasets"
}
