terraform {
  backend "gcs" {
    bucket = "cicd-boot-2c48f16e-tfstate"
    prefix = "dev/firewall-state"
  }
}

