
provider "aws" {
  region = "ap-south-1"
}

module "datazone" {
  source       = "./modules/datazone"
  domain_name  = "healthcare-domain"
  project_name = "patient-records-project"
}

module "s3_datalake" {
  source      = "./modules/s3_datalake"
  bucket_name = "healthcare-data-lake-bucket"
  tags        = { Department = "Healthcare", Environment = "Dev" }
}

module "iam_roles" {
  source = "./modules/iam_roles"
}

module "governance" {
  source      = "./modules/governance"
  role_arn    = module.iam_roles.datazone_role_arn
  catalog_id  = data.aws_caller_identity.current.account_id
}

data "aws_caller_identity" "current" {}
