terraform {
  backend "gcs" {
    bucket = "STORAGE_BUCKET_TFSTATE"
    prefix = "prod/firewall-state"
  }
}

