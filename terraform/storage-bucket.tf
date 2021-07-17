provider "google" {
  version = "~> 2.15"
}

module "storage-bucket" {
  source  = "SweetOps/storage-bucket/google"
  version = "0.3.0"

  # Имя поменяйте на другое
  name = "storage-bucket-test-sgremyachikh"
}

output storage-bucket_url {
  value = module.storage-bucket.url
}
