terraform {
  backend "gcs" {
    bucket = "STORAGE_BUCKET_TFSTATE"
    prefix = "dev/firewall-state"
  }
}

