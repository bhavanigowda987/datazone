
output "s3_bucket_name" {
  value = module.s3_datalake.bucket_name
}

output "domain_id" {
  value = module.datazone.domain_id
}
