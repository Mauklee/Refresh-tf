terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length = 16
  special = false
  lower = true
}

output "random_string_id" {
  value = random_string.bucket_name.id
}
output "random_string_result" {
  value = random_string.bucket_name.result
}