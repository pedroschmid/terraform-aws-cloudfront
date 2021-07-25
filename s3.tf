resource "aws_s3_bucket" "this" {
  bucket = "${var.S3_BUCKET_NAME}-${random_id.this.hex}"
  acl    = "private"
  # force_destroy = true

  policy = <<EOF
{
  "Id": "bucket_policy_site",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "bucket_policy_site_main",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.S3_BUCKET_NAME}-${random_id.this.hex}/*",
      "Principal": "*"
    }
  ]
}
EOF


  website {
    index_document = "index.html"
  }
}