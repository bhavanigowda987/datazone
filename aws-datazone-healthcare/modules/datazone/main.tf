
resource "aws_datazone_domain" "healthcare" {
  name        = var.domain_name
  description = "Healthcare data domain"
}

resource "aws_datazone_project" "project" {
  name        = var.project_name
  domain_id   = aws_datazone_domain.healthcare.id
  description = "Project for managing healthcare datasets"
}
