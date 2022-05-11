module "dev-firewall-int" {
  source = "../../modules/net-vpc-firewall-yaml"
  
  project_id         = var.dev_project_id
  network            = var.dev_project_vpc_internal
  config_directories = [
    "../../firewall_rules/dev",
    "../../firewall_rules/common"
  ]
}

