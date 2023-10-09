output "bucket_name" {
    description = "Bucket name for our static website"
    value = module.home_swtor_hosting.bucket_name
}

output "s3_website_endpoint" {
    description = "S3 Static Website hosting endpoint"
    value = module.home_swtor_hosting.website_endpoint
}

output "domain_name" {
    description = "The Cloudfront Distribution Domain"
    value = module.home_swtor_hosting.domain_name
}