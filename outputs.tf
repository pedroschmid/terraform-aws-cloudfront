output "WEBSITE_DOMAIN" {
  value = aws_s3_bucket.this.website_domain
}

output "WEBSITE_ENDPOINT" {
  value = aws_s3_bucket.this.website_endpoint
}