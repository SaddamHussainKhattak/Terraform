locals {
  config_data  = jsondecode(file("../config.json"))
}

 module "platform-rg" {
    source = "../region/1-resourcegroup"
    region = local.config_data.common.region
    resource-group-name = "${local.config_data.common.region}-${local.config_data.common.tags.asset-id}-platform-resources"
    tags = local.config_data.common.tags
}