module "prod-firewall-int" {
  source = "../../modules/net-vpc-firewall-yaml"
  
  project_id         = var.prod_project_id
  network            = var.prod_project_vpc_internal
  config_directories = [
    "../../firewall_rules/prod",
    "../../firewall_rules/common"
  ]

  log_config  = {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
