locals {
  config_data = jsondecode(file("../config.json"))
}



module "private-dns-zone" {
  count                 = local.config_data.private-dns.inflate && length(local.config_data.private-dns.private-dns-zone-name) > 0 ? 1 : 0
  source                = "./1-private-dns"
  resource-group-name   = local.config_data.common.resource-group-name
  private-dns-zone-name = local.config_data.private-dns.private-dns-zone-name
  tags                  = local.config_data.common.tags
                          }