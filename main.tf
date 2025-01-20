# resource "random_string" "bucket_name" {
#   length = 16
#   special = false
#   lower = true
#   upper = false
# }

resource "aws_s3_bucket" "dev-website" {
  bucket = var.bucket_name

  tags = {
    UUID = var.uuid
    Environment = "Dev"
  }
}

